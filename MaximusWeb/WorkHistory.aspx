<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkHistory.aspx.cs" Inherits="MaximusWeb.WorkHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Work History – Maximus</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Vendor CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" rel="stylesheet" />

    <!-- Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

    <!-- Datagrid Theme -->
    <link href="Content/datagrid/datagrid.maximus.css" rel="stylesheet" />


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

        /* employer column */
        .employer-cell {
            font-weight: 600;
            color: #6f4fb3;
            vertical-align: middle;
            width: 180px;
        }

        /* address link */
        .address-link {
            color: #6f4fb3;
            text-decoration: none;
            font-weight: 500;
        }

            .address-link:hover {
                text-decoration: underline;
            }

        /* purple values */
        .purple-text {
            color: #6f4fb3;
            font-weight: 500;
        }

        /* reason row background */
        .reason-row td {
            padding: 10px 12px !important;
        }

        /* reason type */
        .reason-type {
            font-weight: 600;
            color: #444;
            width: 180px;
        }

        /* reason text */
        .reason-text {
            color: #777;
            font-size: 13px;
        }

        /* edit icon */
        .edit-icon {
            font-size: 18px;
            color: #777;
            cursor: pointer;
        }

        /* align edit icon right */
        .reason-action {
            text-align: right;
        }

        /* border between Employer and Address (main row) */
        .maximus-base-table tbody tr.work-main-row td.address-cell {
            border-left: 1px solid #e5e5e5;
        }

        /* continue border in reason row */
        .maximus-base-table tbody tr.reason-row td.reason-type {
            border-left: 1px solid #e5e5e5;
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
            <li class="nav-item"><a class="nav-link active" href="#">Work History</a></li>
        </ul>
        <div class="text-end small">
            John Doe<br>
            Last Login: 05/31/2022 | 02:18 PM
        </div>
    </div>

    <div class="container my-4">

        <!-- RESULTS -->
        <div class="page-card">
            <div class="page-card-header">
                Work History<i class="bi bi-info-circle"></i>
            </div>
            <div class="p-3 table-responsive">
                <div id="work-history-grid-container" class="d-none"></div>
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

    <!-- Services -->
    <script src="Scripts/services/work-history.service.js"></script>


    <!-- Page -->
    <script src="Scripts/pages/work-history.js"></script>


</body>
</html>
