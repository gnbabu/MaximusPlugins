<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Correspondence.aspx.cs" Inherits="MaximusWeb.Correspondence" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Correspondence – Maximus</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

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

        /* ===== BUTTONS ===== */
        .btn-purple {
            background-color: #5b2d8b;
            color: #fff;
            border: none;
        }

            .btn-purple:hover {
                background-color: #4a2372;
                color: #fff;
            }


        /* =========================================================
        MAXIMUS BASE TABLE STYLE
        Used by DataGrid Plugin
        ========================================================= */

        table.maximus-base-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            font-size: 14px;
            background: #fff;
            border: 1px solid #e2dff0;
        }

            /* ================= HEADER ================= */

            table.maximus-base-table thead th {
                background: #ffffff; /* light grey-purple like screenshot */
                color: #444;
                font-weight: 600;
                font-size: 13px;
                padding: 10px 14px;
                border-bottom: 1px solid #ddd;
                white-space: nowrap;
                vertical-align: middle;
            }

            /* ================= FILTER INPUT ================= */

            table.maximus-base-table thead .filter-input {
                font-size: 12px;
                padding: 3px 8px;
                border-radius: 4px;
                border: 1px solid #ccc;
            }

            /* ================= BODY CELLS ================= */

            table.maximus-base-table tbody td {
                padding: 11px 14px;
                border-bottom: 1px solid #eceaf4;
                color: #444;
                vertical-align: middle;
            }

            /* ================= ZEBRA ROW COLORS ================= */

            table.maximus-base-table tbody tr.dg-data-row:nth-child(odd) {
                background-color: #ffffff;
            }

            table.maximus-base-table tbody tr.dg-data-row:nth-child(even) {
                background-color: #efedf5; /* lavender stripe like screenshot */
            }

            /* ================= ROW HOVER ================= */

            table.maximus-base-table tbody tr.dg-data-row:hover {
                background-color: #e4e0f2;
            }

            /* ================= LINKS ================= */

            table.maximus-base-table tbody td a {
                color: #6e42a3;
                font-weight: 500;
                text-decoration: none;
            }

                table.maximus-base-table tbody td a:hover {
                    text-decoration: underline;
                }

            table.maximus-base-table tbody tr.dg-data-row:nth-of-type(odd) {
                background: #f7f5fa;
            }

            table.maximus-base-table tbody tr.dg-data-row:nth-of-type(even) {
                background: #ffffff;
            }

            table.maximus-base-table tbody tr.dg-data-row:hover {
                background: #f4f5fa;
            }

            /* ================= NO DATA ================= */

            table.maximus-base-table tbody tr td.text-center {
                color: #777;
                font-style: italic;
            }

        /* ================= PAGINATION ================= */

        .pagination .page-item.active .page-link {
            background-color: #6e42a3;
            border-color: #6e42a3;
            color: #fff;
        }

        .pagination .page-link {
            color: #6e42a3;
            font-size: 14px;
        }

        .sort-icon {
            font-size: 16px;
            vertical-align: middle;
            margin-left: 4px;
            color: #777;
        }

        th:hover .sort-icon {
            color: #6e42a3;
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

        <!-- RESULTS -->
        <div class="page-card">
            <div class="page-card-header">
                Correspondence Search Results <i class="bi bi-info-circle"></i>
            </div>
            <div class="p-3 table-responsive">
                <div id="correspondence-grid-container" class="d-none"></div>
            </div>
        </div>

    </div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Include jsPDF and AutoTable -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>


    <script src="Scripts/DataGridB5/datagrid.plugin.b5.js"></script>
    <script src="Scripts/correspondence.js"></script>

</body>
</html>
