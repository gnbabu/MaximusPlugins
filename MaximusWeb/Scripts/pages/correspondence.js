$(function () {

    const request = {
        regId: "string",
        providerId: "string",
        npi: "string",
        dateFrom: "2026-03-04T17:31:24.619Z",
        dateTo: "2026-03-04T17:31:24.619Z"
    };

    loadCorrespondence(request);

});

function loadCorrespondence(request) {

    CorrespondenceService.search(request, function (response) {

        renderCorrespondenceGrid(response);

    });

}

function renderCorrespondenceGrid(data) {

    $('#correspondence-grid-container')
        .removeClass('d-none')
        .dataGrid({

            data: data,

            columns: [
                {
                    key: 'subject',
                    title: 'Correspondence Subject',
                    type: 'text',
                    sortable: true,
                    cellTemplate: function (row) {
                        return `
                        <a href="javascript:void(0)"
                           class="open-popup"
                           data-id="${row.correspondenceId}">
                           ${row.subject}
                        </a>`;
                    }
                },
                { key: 'medicaidId', title: 'Medicaid ID', type: 'text', sortable: true },
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

            enableAllColumnSearch: false,
            enableColumnFilters: false,
            enableSorting: true,

            dateFormat: 'MM-DD-YYYY',
            includeTime: false
        });

}

function clearCorrespondenceGrid() {

    const $grid = $('#correspondence-grid-container');

    $grid.empty();
    $grid.addClass('d-none');

}