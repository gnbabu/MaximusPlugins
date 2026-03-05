
$(function () {
    // ✅ VALID SEARCH
    const request = {
        "regId": "string",
        "providerId": "string",
        "npi": "string",
        "dateFrom": "2026-03-04T17:31:24.619Z",
        "dateTo": "2026-03-04T17:31:24.619Z"
    };

    fetchCorrespondence(request);

});


function fetchCorrespondence(request) {

    debugger;

    $.ajax({
        url: 'https://localhost:7157/api/Correspondence/search',
        method: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(request),

        success: function (response) {
            debugger;
            $('#correspondence-grid-container')
                .removeClass('d-none')
                .dataGrid({
                    data: response,

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
        },

        error: function (err) {
            alert("Error loading correspondence data.");
            console.error(err);
        },

        complete: function () {
            //hideLoader();
        }
    });
}

function clearCorrespondenceGrid() {
    const $grid = $('#correspondence-grid-container');

    // Remove plugin-generated HTML
    $grid.empty();

    // Hide container again
    $grid.addClass('d-none');
}


