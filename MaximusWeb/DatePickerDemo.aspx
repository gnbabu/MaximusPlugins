<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatePickerDemo.aspx.cs" Inherits="MaximusWeb.DatePickerDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Date Picker – Maximus</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Vendor CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" rel="stylesheet" />

    <!-- Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&display=swap" rel="stylesheet" />

    <link href="Content/datepicker/datepicker.maximus.css" rel="stylesheet" />


    <style>
        :root {
            --purple-dark: #3a0e6e;
            --purple-main: #5c1a8c;
            --purple-light: #6a1b9a;
            --purple-lighter: #f3e5f5;
            --purple-footer: #3a0e6e;
            --text-dark: #333;
            --text-muted: #666;
            --bg-page: #f0f0f0;
            --border-color: #e0e0e0;
        }

        body {
            background: #f4f5fa;
            font-size: 14px;
        }

        /* ===== HEADERS ===== */
        .brand-bar {
            background: linear-gradient(180deg, #6e42a3, #4a287a);
            color: #fff;
            padding: 10px 20px;
        }

        .menu-bar {
            background: #fff;
            border-bottom: 1px solid #ddd;
            padding: 8px 20px;
        }

            .menu-bar .nav-link {
                color: #6e42a3 !important;
                font-weight: 600;
            }

                .menu-bar .nav-link.active {
                    border-bottom: 2px solid #6e42a3;
                }

        /* ===== CARDS ===== */
        .page-card {
            background: #fff;
            border: 1px solid #ded9eb;
            border-radius: 8px;
        }

        .page-card-header {
            padding: 12px 16px;
            font-weight: 600;
            color: #6e42a3;
            border-bottom: 1px solid #e6e1f0;
            display: flex;
            justify-content: space-between;
        }

        /* Container styling */
        .container {
            margin-top: 40px;
        }

        /* Header styles */
        h1 {
            color: #6f42c1;
            font-size: 24px;
            font-weight: bold;
        }

        /* Button styling in header */
        .header-buttons .btn {
            background-color: #6f42c1;
            color: white;
            font-size: 14px;
            padding: 8px 15px;
            border-radius: 5px;
            margin-left: 10px;
            display: flex;
            align-items: center;
        }

            .header-buttons .btn:hover {
                background-color: #5a2c9f;
            }

        .header-buttons .material-icons {
            margin-right: 8px;
        }

        /* Card header styles */
        .card-header {
            background-color: #6f42c1;
            color: white;
            font-size: 16px;
            font-weight: 600;
            padding: 15px;
            display: flex;
            align-items: center;
        }

            .card-header .material-icons {
                margin-right: 10px;
                font-size: 22px;
            }

        /* List item styles */
        .list-group-item {
            font-size: 14px;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border: 1px solid #e3e3e3;
            background-color: #fff;
        }

            .list-group-item:hover {
                background-color: #f1f1f1;
            }

        .material-icons {
            /*font-size: 20px;*/
        }


        .content-card {
            background-color: #fff;
            border-radius: 12px;
            border: 1px solid var(--border-color);
            box-shadow: 0 2px 8px rgba(0,0,0,0.06);
            padding: 0px;
        }
        /* Title area */
        .page-container {
            padding: 20px 10px;
            background: #F7F4FA;
            margin-bottom: 20px;
            border: 1px solid #e6e4f2;
        }

        .page-title-icon {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background-color: #5c1a8c;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
        }

            .page-title-icon .material-icons-outlined {
                font-size: 20px;
            }

        .page-title {
            font-size: 20px;
            font-weight: 700;
            color: #5c1a8c;
        }

        /* Action buttons */
        .btn-action-outline {
            border: 1.5px solid #5c1a8c;
            color: #5c1a8c;
            background: #fff;
            border-radius: 50px;
            font-size: 13px;
            font-weight: 600;
            padding: 6px 16px;
            transition: all 0.2s;
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }

            .btn-action-outline:hover {
                background-color: var(--purple-lighter);
                color: #5c1a8c;
                border-color: #5c1a8c;
            }

        .btn-action-filled {
            background-color: #5c1a8c;
            color: #fff;
            border: none;
            border-radius: 50px;
            font-size: 13px;
            font-weight: 600;
            padding: 7px 18px;
            transition: all 0.2s;
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }

            .btn-action-filled:hover {
                background-color: var(--purple-dark);
                color: #fff;
            }

            .btn-action-outline .material-icons-outlined,
            .btn-action-filled .material-icons-outlined {
                font-size: 18px;
            }

        /* Report list items */
        .report-item {
            display: flex;
            align-items: center;
            background-color: #fff;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            padding: 12px 16px;
            margin-bottom: 8px;
            transition: box-shadow 0.2s;
            gap: 12px;
        }

            .report-item:hover {
                box-shadow: 0 2px 6px rgba(0,0,0,0.07);
            }

            .report-item .report-icon {
                color: #5c1a8c;
                flex-shrink: 0;
                display: flex;
                align-items: center;
            }

                .report-item .report-icon .material-icons-outlined {
                    font-size: 22px;
                }

            .report-item .report-name {
                font-size: 13px;
                color: var(--text-dark);
                font-weight: 400;
                flex: 1;
            }

            .report-item .btn-more {
                background: none;
                border: none;
                color: var(--text-muted);
                padding: 2px 6px;
                cursor: pointer;
                border-radius: 4px;
                transition: background 0.2s;
                flex-shrink: 0;
                display: flex;
                align-items: center;
            }

                .report-item .btn-more .material-icons-outlined {
                    font-size: 22px;
                }

                .report-item .btn-more:hover {
                    background-color: #f5f5f5;
                }

        .report-list.collapse:not(.show) {
            display: none;
        }

        .report-list.show {
            display: block;
        }

        .btn-icon {
            background: none;
            border: none;
            color: #5c1a8c;
            padding: 4px;
            cursor: pointer;
            border-radius: 4px;
            transition: background 0.2s;
            display: flex;
            align-items: center;
        }

        .popup-button {
            display: flex;
            align-items: center; /* Aligns text and icon vertically */
            justify-content: center; /* Optional: Centers content inside button */
            background-color: #F7F4FA !important;
            border: 1px solid #e6e4f2 !important;
            color: #5c1a8c !important;
            font-weight: 500 !important;
        }
    </style>


</head>
<body>
    <!-- TOP BRAND HEADER -->
    <div class="brand-bar d-flex justify-content-between">
        <div><strong>maximus</strong> <small>DEPARTMENT OF MEDICAID</small></div>
        <div>Resources &nbsp; FAQ &nbsp; Contact us <i class="bi bi-person-circle ms-2"></i></div>
    </div>

    <!-- WHITE MENU -->
    <div class="menu-bar d-flex justify-content-between align-items-center">
        <ul class="nav">
            <li class="nav-item"><a class="nav-link" href="#">My Dashboard</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Provider Network Management</a></li>
            <li class="nav-item"><a class="nav-link active" href="#">Correspondence</a></li>
        </ul>
        <div class="text-end small">
            John Doe<br>
            Last Login: 05/31/2022 | 02:18 PM
        </div>
    </div>

    <div class="container py-4">

        <h3 class="mb-4 fw-bold text-primary">📅 Maximus Date Picker (Bootstrap Demo)</h3>

        <!-- ROW 1 -->
        <div class="row g-4">

            <!-- Default -->
            <div class="col-md-4">
                <div class="card p-3 shadow-sm">
                    <label class="form-label fw-semibold">Default</label>
                    <div class="maximus-date-wrapper">
                        <input class="form-control maximus-date-input default-date" placeholder="MM/DD/YYYY">
                        <span class="material-icons maximus-icon">calendar_today</span>
                    </div>
                </div>
            </div>

            <!-- Future -->
            <div class="col-md-4">
                <div class="card p-3 shadow-sm">
                    <label class="form-label fw-semibold">Future Only</label>
                    <div class="maximus-date-wrapper">
                        <input class="form-control maximus-date-input future-date">
                        <span class="material-icons maximus-icon">calendar_today</span>
                    </div>
                </div>
            </div>

            <!-- Past -->
            <div class="col-md-4">
                <div class="card p-3 shadow-sm">
                    <label class="form-label fw-semibold">Past Only</label>
                    <div class="maximus-date-wrapper">
                        <input class="form-control maximus-date-input past-date">
                        <span class="material-icons maximus-icon">calendar_today</span>
                    </div>
                </div>
            </div>

        </div>

        <!-- ROW 2 -->
        <div class="row g-4 mt-1">

            <!-- DOB -->
            <div class="col-md-4">
                <div class="card p-3 shadow-sm">
                    <label class="form-label fw-semibold">DOB (18+)</label>
                    <div class="maximus-date-wrapper">
                        <input class="form-control maximus-date-input dob-date">
                        <span class="material-icons maximus-icon">calendar_today</span>
                    </div>
                </div>
            </div>

            <!-- Holidays -->
            <div class="col-md-4">
                <div class="card p-3 shadow-sm">
                    <label class="form-label fw-semibold">Disable Holidays</label>
                    <div class="maximus-date-wrapper">
                        <input class="form-control maximus-date-input holiday-date">
                        <span class="material-icons maximus-icon">calendar_today</span>
                    </div>
                </div>
            </div>

            <!-- Custom Format -->
            <div class="col-md-4">
                <div class="card p-3 shadow-sm">
                    <label class="form-label fw-semibold">Custom Format</label>
                    <div class="maximus-date-wrapper">
                        <input class="form-control maximus-date-input custom-date">
                        <span class="material-icons maximus-icon">calendar_today</span>
                    </div>
                </div>
            </div>

        </div>

        <!-- RANGE -->
        <div class="card p-3 shadow-sm mt-4">
            <h6 class="fw-bold mb-3">Range Picker</h6>

            <div class="row g-3">
                <div class="col-md-6">
                    <label class="form-label">From Date</label>
                    <div class="maximus-date-wrapper">
                        <input class="form-control maximus-date-input from-date">
                        <span class="material-icons maximus-icon">calendar_today</span>
                    </div>
                </div>

                <div class="col-md-6">
                    <label class="form-label">To Date</label>
                    <div class="maximus-date-wrapper">
                        <input class="form-control maximus-date-input to-date">
                        <span class="material-icons maximus-icon">calendar_today</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="card p-3 shadow-sm mt-4">
            <div class="col-md-6">
                <label class="form-label">Select Date</label>
                <div class="maximus-date-wrapper">
                    <input type="text"
                        class="maximus-date-input"
                        placeholder="MM/DD/YYYY" />

                    <span class="material-icons maximus-icon">calendar_today</span>
                </div>
            </div>
        </div>

        <!-- RANGE -->
        <div class="card p-3 shadow-sm mt-4">
            <h6 class="fw-bold mb-3">All Options Picker</h6>

            <div class="row g-3">
                <div class="col-md-6">
                    <label class="form-label">From Date</label>
                    <div class="maximus-date-wrapper">
                        <input class="form-control maximus-date-input master-date" placeholder="MM/DD/YYYY" />
                        <span class="material-icons maximus-icon">calendar_today</span>
                    </div>
                </div>


            </div>
        </div>

    </div>

    <!-- Vendor JS -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>

    <!-- Config -->
    <script>
        window.WEB_API_URL = '<%= System.Configuration.ConfigurationManager.AppSettings["WebAPIUrl"] %>';
    </script>
    <!-- Core -->
    <script src="Scripts/core/config.js"></script>
    <script src="Scripts/core/api.service.js"></script>
    <script src="Scripts/plugins/datepicker/maximus.datePicker.js"></script>

    <script>
        $(function () {
            //Features Covered

            //✔ Default
            //✔ Future only
            //✔ Past only
            //✔ DOB
            //✔ Holidays
            //✔ Custom format
            //✔ Range picker

            $('.default-date').maximusDatePicker();

            $('.future-date').maximusDatePicker({
                minDate: moment()
            });

            $('.past-date').maximusDatePicker({
                maxDate: moment()
            });

            $('.dob-date').maximusDatePicker({
                maxDate: moment().subtract(18, 'years')
            });

            $('.holiday-date').maximusDatePicker({
                disableDates: ['2026-01-01', '2026-12-25']
            });

            $('.custom-date').maximusDatePicker({
                dateFormat: 'YYYY-MM-DD'
            });

            let fromDate = null;

            $('.from-date').maximusDatePicker({
                onDateSelect: function (date) {
                    fromDate = date;

                    $('.to-date').maximusDatePicker({
                        minDate: moment(date)
                    });
                }
            });

            $('.to-date').maximusDatePicker();


            $('.maximus-date-input').maximusDatePicker({
                minDate: moment().subtract(1, 'year'),
                maxDate: moment().add(1, 'year'),
                //disableDates: ['2026-03-25'],
                disableDates: [],

                onDateSelect: function (date) {
                    console.log("Selected:", date);
                }
            });


            $('.master-date').maximusDatePicker({

                // ✅ FORMAT
                dateFormat: 'MM/DD/YYYY',

                // ✅ RANGE CONTROL
                minDate: moment().subtract(2, 'years'),
                maxDate: moment().add(2, 'years'),

                // ✅ DISABLE SPECIFIC DATES
                disableDates: [
                    '2026-01-01',
                    '2026-08-15',
                    '2026-12-25'
                ],

                // ✅ OPTIONAL CUSTOM FLAG (if added in plugin)
                disableWeekends: true,

                // ✅ EVENT CALLBACK
                onDateSelect: function (date) {

                    console.log("Selected Date:", date);

                    // Example: format + validation
                    const selected = moment(date);

                    if (selected.isBefore(moment(), 'day')) {
                        console.log("Past date selected");
                    }

                    if (selected.day() === 0) {
                        console.log("Sunday selected");
                    }
                }

            });


            // Actual Usage 

            //const dateConfig = {
            //    dateFormat: 'MM/DD/YYYY',
            //    minDate: moment().subtract(1, 'year'),
            //    maxDate: moment().add(1, 'year'),
            //    disableDates: ['2026-01-01'],
            //    disableWeekends: true
            //};

            //$('.maximus-date-input').maximusDatePicker(dateConfig);
        });
</script>
</body>
</html>
