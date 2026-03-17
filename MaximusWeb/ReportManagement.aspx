<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportManagement.aspx.cs" Inherits="MaximusWeb.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Correspondence – Maximus</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Vendor CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" rel="stylesheet" />

    <!-- Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&display=swap" rel="stylesheet" />

    <!-- Datagrid Theme -->
    <link href="Content/datagrid/datagrid.maximus.css" rel="stylesheet" />

    <link href="Content/accordion/maximus-accordion.css" rel="stylesheet" />
    <link href="Content/modal/modal.maximus.css" rel="stylesheet" />


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

    <%--Report Management--%>
    <div id="reportManagement" class="container content-card">

        <!-- Page Title Row -->
        <div class="d-flex flex-column flex-sm-row align-items-start align-items-sm-center justify-content-between gap-3 page-container">
            <div class="d-flex align-items-center gap-3">
                <div class="page-title-icon">
                    <span class="material-icons-outlined">assessment</span>
                </div>
                <h1 class="page-title mb-0">Report Management</h1>
            </div>
            <div class="d-flex flex-wrap gap-2 action-buttons">
                <button class="btn btn-action-filled">
                    <span class="material-icons-outlined">search</span> Ad-hoc Query
        
                </button>
                <button class="btn btn-action-outline" id="btnMyDrafts">
                    <span class="material-icons-outlined">drafts</span> My Drafts
        
                </button>
                <button class="btn btn-action-filled" id="newReportBtn">
                    <span class="material-icons-outlined">note_add</span> New Report
        
                </button>
            </div>
        </div>


        <!-- Standard Reports -->
        <div id="standardReportsAccordion" class="maximus-accordion">

            <div class="maximus-accordion-item">

                <div class="maximus-accordion-header">

                    <span class="maximus-accordion-bar"></span>

                    <span class="maximus-accordion-title">Standard Reports</span>

                    <button class="btn-icon" title="Help"><span class="material-icons-outlined">info</span></button>
                    <span class="maximus-accordion-arrow">
                        <span class="material-icons">expand_more</span>
                    </span>

                </div>

                <div class="maximus-accordion-content">
                    <div class="p-3">
                        <div class="report-item">
                            <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                            <span class="report-name">Credentialing Clean File Report</span>
                            <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
                        </div>
                        <div class="report-item">
                            <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                            <span class="report-name">Credentialing Flagged Files Report</span>
                            <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
                        </div>
                        <div class="report-item">
                            <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                            <span class="report-name">Provider Re-credentialing Due Report</span>
                            <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
                        </div>
                        <div class="report-item">
                            <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                            <span class="report-name">Credentialing – Provider Contracting &gt; 36 Months Report</span>
                            <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
                        </div>
                        <div class="report-item">
                            <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                            <span class="report-name">Credentialing – Clean and Flagged Files Summary Report</span>
                            <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
                        </div>
                    </div>
                </div>

            </div>

        </div>


        <br />

        <!-- Custom Reports -->
        <div id="customReportsAccordion" class="maximus-accordion">

            <div class="maximus-accordion-item">

                <div class="maximus-accordion-header">

                    <span class="maximus-accordion-bar"></span>

                    <span class="maximus-accordion-title">Custom Reports
                    </span>

                    <button class="btn-icon" title="Help"><span class="material-icons-outlined">info</span></button>
                    <span class="maximus-accordion-arrow">
                        <span class="material-icons">expand_more</span>
                    </span>

                </div>

                <div class="maximus-accordion-content">
                    <div class="p-3">
                        <div class="report-item">
                            <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                            <span class="report-name">Custom Report</span>
                            <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <%--My Drafts--%>
    <div id="myDrafts" class="container content-card">

        <!-- Page Title Row -->
        <div class="d-flex flex-column flex-sm-row align-items-start align-items-sm-center justify-content-between gap-3 page-container">
            <div class="d-flex align-items-center gap-3">
                <div class="page-title-icon">
                    <span class="material-icons-outlined">drafts</span>
                </div>
                <h1 class="page-title mb-0">My Drafts</h1>
            </div>
            <div class="d-flex flex-wrap gap-2 action-buttons">
                <button class="btn btn-action-filled">
                    <span class="material-icons-outlined">search</span> Ad-hoc Query
    
                </button>
                <button class="btn btn-action-outline" id="btnReportManagement">
                    <span class="material-icons-outlined">assessment</span> Report Management
    
                </button>
                <button class="btn btn-action-filled">
                    <span class="material-icons-outlined">note_add</span> New Report
    
                </button>
            </div>
        </div>

        <div class="p-3">
            <div class="report-item">
                <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                <span class="report-name">Credentialing Clean File Report</span>
                <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
            </div>
            <div class="report-item">
                <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                <span class="report-name">Credentialing Flagged Files Report</span>
                <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
            </div>
            <div class="report-item">
                <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                <span class="report-name">Provider Re-credentialing Due Report</span>
                <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
            </div>
            <div class="report-item">
                <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                <span class="report-name">Credentialing – Provider Contracting &gt; 36 Months Report</span>
                <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
            </div>
            <div class="report-item">
                <span class="report-icon"><span class="material-icons-outlined">description</span></span>
                <span class="report-name">Credentialing – Clean and Flagged Files Summary Report</span>
                <button class="btn-more"><span class="material-icons-outlined">more_vert</span></button>
            </div>
        </div>


    </div>


    <!-- Modal 1: Credentialing Clean File Report -->
    <div class="modal fade" id="cleanFileReportModal" tabindex="-1" aria-labelledby="cleanFileReportLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cleanFileReportLabel">Credentialing Clean File Report</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Start Date -->
                    <div class="mb-3">
                        <label for="startDate" class="form-label">Start Date*</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="startDate" placeholder="MM/DD/YYYY" required>
                            <span class="input-group-text">
                                <span class="material-icons">calendar_today</span>
                            </span>
                        </div>
                    </div>
                    <!-- End Date -->
                    <div class="mb-3">
                        <label for="endDate" class="form-label">End Date*</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="endDate" placeholder="MM/DD/YYYY" required>
                            <span class="input-group-text">
                                <span class="material-icons">calendar_today</span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" id="cancelCleanFileReport" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary" id="saveAndCloseReport">View Report</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal 2: Select Template -->
    <div class="modal fade" id="selectTemplateModal" tabindex="-1" aria-labelledby="selectTemplateLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="selectTemplateLabel">Select Template</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="templateSelect" class="form-label">Template*</label>
                        <select class="form-select" id="templateSelect" required>
                            <option selected>Select Template</option>
                            <option value="reactivate">Reactivate</option>
                            <option value="renew">Renew</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="reportName" class="form-label">Report Name*</label>
                        <input type="text" class="form-control" id="reportName" placeholder="Enter report name" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <!-- Cancel button with Material Icon -->
                    <button type="button" class="btn btn-secondary" id="cancelSelectTemplate" data-bs-dismiss="modal">
                        <span class="material-icons-outlined">close</span> Cancel
                    </button>
                    <!-- Save and Close button with Material Icon -->
                    <button type="button" class="btn btn-primary" id="saveAndCloseTemplate">
                        <span class="material-icons-outlined">check_circle</span> Confirm
                    </button>
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

    <!-- Accordion Plugin -->
    <script src="Scripts/plugins/accordion/maximus.accordion.js"></script>

    <script src="Scripts/plugins/modal/maximus.modal.plugin.js"></script>

    <script src="Scripts/pages/report-management.js"></script>


    <script>
        $(document).ready(function () {

            // Initialize Clean File Report Modal
            var cleanFileReportModal = $('#cleanFileReportModal').modalPlugin({
                modalId: '#cleanFileReportModal',
                modalWidth: '500px',
                onSave: function ($modal) {
                    // Read data from modal
                    var formData = {
                        startDate: $modal.find('#startDate').val(),
                        endDate: $modal.find('#endDate').val()
                    };

                    // Example: Validate data
                    //if (!formData.startDate || !formData.endDate) {
                    //    alert('Please fill both start and end dates!');
                    //    return;
                    //}

                    window.location.href = 'ReportViewer.aspx';

                    // Process or save the data (e.g., send to an API)
                    console.log('Clean Report Data:', formData);

                    // Close modal after saving data
                    cleanFileReportModal.close();
                },

                onClose: function () {
                    console.log('Clean File Report modal closed');
                }
            });

            // Initialize Select Template Modal
            var selectTemplateModal = $('#selectTemplateModal').modalPlugin({
                modalId: '#selectTemplateModal',
                modalWidth: '500px',

                onSave: function ($modal) {
                    // Read data from modal
                    var formData = {
                        template: $modal.find('#templateSelect').val(),
                        reportName: $modal.find('#reportName').val()
                    };

                    // Example: Validate data
                    //if (!formData.template || !formData.reportName) {
                    //    alert('Please select a template and enter a report name!');
                    //    return;
                    //}

                    // Process or save the data (e.g., send to an API)
                    console.log('Template Data:', formData);

                    // Close modal after saving data
                    selectTemplateModal.close();
                },

                onClose: function () {
                    console.log('Select Template modal closed');
                }
            });

            // Open the Select Template Modal when the "New Report" button is clicked
            $('#newReportBtn').on('click', function () {
                debugger;
                selectTemplateModal.open(); // Open the modal programmatically
            });

            // Open the Select Template Modal when the "New Report" button is clicked
            $('.btn-more').on('click', function () {
                cleanFileReportModal.open(); // Open the modal programmatically
            });


            // Handle Save and Close for Clean File Report modal
            $('#saveAndCloseReport').on('click', function () {
                cleanFileReportModal.save();  // Call the plugin's save method
            });

            // Handle Save and Close for Select Template modal
            $('#saveAndCloseTemplate').on('click', function () {
                selectTemplateModal.save();  // Call the plugin's save method
            });

            // Handle Cancel buttons or closing the modal manually if needed
            $('#cancelCleanFileReport').on('click', function () {
                cleanFileReportModal.close();  // Close the modal manually
            });

            $('#cancelSelectTemplate').on('click', function () {
                selectTemplateModal.close();  // Close the modal manually
            });

        });
    </script>

</body>
</html>
