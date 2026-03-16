<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultipleAccordian.aspx.cs" Inherits="MaximusWeb.MultipleAccordian" %>

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

    <!-- Datagrid Theme -->
    <link href="Content/datagrid/datagrid.maximus.css" rel="stylesheet" />

    <link href="Content/accordion/maximus-accordion.css" rel="stylesheet" />


    <style>
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

    <div class="container my-4">

        <!-- Correspondence -->
        <div id="correspondenceAccordion" class="maximus-accordion">

            <div class="maximus-accordion-item">

                <div class="maximus-accordion-header">

                    <span class="maximus-accordion-bar"></span>

                    <span class="maximus-accordion-title">Correspondence Search Results
                    </span>

                    <span class="maximus-accordion-arrow">
                        <span class="material-icons">expand_more</span>
                    </span>

                </div>

                <div class="maximus-accordion-content">
                    <div class="p-3">
                        <div id="correspondence-grid-container" class="d-none"></div>
                    </div>
                </div>

            </div>

        </div>


        <br />

        <!-- Groups -->
        <div id="groupsAccordion" class="maximus-accordion">

            <div class="maximus-accordion-item">

                <div class="maximus-accordion-header">

                    <span class="maximus-accordion-bar"></span>

                    <span class="maximus-accordion-title">Groups
                    </span>

                    <span class="maximus-accordion-arrow">
                        <span class="material-icons">expand_more</span>
                    </span>

                </div>

                <div class="maximus-accordion-content">
                    <div class="p-3 table-responsive">
                        <div id="provider-groups-grid-container" class="d-none"></div>
                    </div>
                </div>

            </div>

        </div>


        <br />

        <!-- Affiliations -->
        <div id="affiliationsAccordion" class="maximus-accordion">

            <div class="maximus-accordion-item">

                <div class="maximus-accordion-header">

                    <span class="maximus-accordion-bar"></span>

                    <span class="maximus-accordion-title">Affiliations
                    </span>

                    <span class="maximus-accordion-arrow">
                        <span class="material-icons">expand_more</span>
                    </span>

                </div>

                <div class="maximus-accordion-content">
                    <div class="p-3 table-responsive">
                        <div id="hospital-affiliation-grid-container" class="d-none"></div>
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

    <!-- DataGrid Plugin -->
    <script src="Scripts/plugins/datagrid/maximus.datagrid.plugin.js"></script>

    <!-- Accordion Plugin -->
    <script src="Scripts/plugins/accordion/maximus.accordion.js"></script>

    <!-- Services -->
    <script src="Scripts/services/correspondence.service.js"></script>
    <script src="Scripts/services/provider-group.service.js"></script>
    <script src="Scripts/services/hospital-affiliation.service.js"></script>

    <!-- Page -->
    <script src="Scripts/pages/correspondence.js"></script>
    <script src="Scripts/pages/provider-group.js"></script>
    <script src="Scripts/pages/hospital-affiliation.js"></script>

    <script>
        $(function () {

            $("#correspondenceAccordion").maximusAccordion({
                allowMultiple: false
            });

            $("#groupsAccordion").maximusAccordion({
                allowMultiple: false
            });

            $("#affiliationsAccordion").maximusAccordion({
                allowMultiple: false
            });

        });
    </script>


</body>
</html>
