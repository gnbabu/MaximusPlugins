$(function () {

    const request = {
        regId: "",
        providerId: "",
        npi: "",
        dateFrom: null,
        dateTo: null
    };

    renderCorrespondenceGrid(request); // ✅ pass search model only
});



function loadPage(grid, searchRequest) {

    const request = {
        searchModel: searchRequest,
        page: {
            page: grid.page,
            pageSize: grid.pageSize
        }
    };

    CorrespondenceService.search(request, function (res) {

        $('#correspondence-grid-container')[0]
            .setData(res.data, res.totalRecords);
    });
}

function renderCorrespondenceGrid(searchRequest) {

    $('#correspondence-grid-container')
        .removeClass('d-none')
        .dataGrid({

            data: [], // 🔥 EMPTY INIT

            onPageChange: function (grid) {
                loadPage(grid, searchRequest);
            },

            onPageSizeChange: function (grid) {
                loadPage(grid, searchRequest);
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

            dateFormat: 'MM-DD-YYYY',
            includeTime: false
        });

    // 🔥 INITIAL LOAD
    loadPage({ page: 1, pageSize: 10 }, searchRequest);
}


//Example usage:
//const ids = $('#grid')[0].getSelectedRows();

//$('#grid')[0].selectRow(5);

//$('#grid')[0].clearSelection();

//$('#grid')[0].toggleColumnVisibility('phone', false);  // Hides the "Phone" column

//$('#grid')[0].toggleColumnVisibility('phone', false);  // Hides the "Phone" column

//const selectedRows = $('#grid')[0].getSelectedRows();  // Get all selected row IDs
//console.log(selectedRows);

