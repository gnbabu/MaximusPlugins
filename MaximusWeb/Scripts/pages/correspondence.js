$(function () {

    const searchRequest = {
        regId: "",
        providerId: "",
        npi: "",
        dateFrom: null,
        dateTo: null
    };

    renderCorrespondenceGrid(searchRequest);
});

function renderCorrespondenceGrid(searchRequest) {

    $('#correspondence-grid-container')
        .removeClass('d-none')
        .dataGrid({

            apiUrl: 'https://localhost:7157/api/correspondence/search', // ✅ IMPORTANT

            enableServerSide: true,               // ✅ MAIN FLAG

            // 🔥 merge your custom request (business filters)
            buildRequest: function () {
                return searchRequest;
            },

            columns: [
                {
                    key: 'subject',
                    title: 'Correspondence Subject',
                    type: 'text',
                    sortable: false,
                    cellTemplate: function (row) {
                        return `
                        <a href="javascript:void(0)"
                           class="open-popup"
                           data-id="${row.correspondenceId}">
                           ${row.subject}
                        </a>`;
                    }
                },
                { key: 'medicaidId', title: 'Medicaid ID', type: 'text', sortable: true, visible: false },
                { key: 'regId', title: 'Reg ID', type: 'text', sortable: true },
                { key: 'providerId', title: 'Provider ID', type: 'text', sortable: true },
                { key: 'npi', title: 'NPI', type: 'text', sortable: true },
                { key: 'dateAvailableFrom', title: 'Date From', type: 'date', sortable: true },
                { key: 'dateAvailableTo', title: 'Date To', type: 'date', sortable: true }
            ],

            tableClass: 'maximus-base-table',
            gridTitle: '',
            noDataMessage: 'No correspondence found.',
            idProperty: 'correspondenceId',

            enableRowSelection: true,
            enableAllColumnSearch: false,
            enableColumnFilters: true,
            enableSorting: true,

            // ⚠️ IMPORTANT
            enableClientSideSortNoReset: false, // ❌ disable hybrid in server mode

            dateFormat: 'MM-DD-YYYY',
            includeTime: false
        });
}