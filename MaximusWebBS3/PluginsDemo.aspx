<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PluginsDemo.aspx.cs" Inherits="MaximusWebBS3.PluginsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maximus Plugins (Bootstrap 3) &ndash; Demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Vendor CSS (CDN, Bootstrap 3.4.1 - falls back to the local copy in Content/ if the CDN is unreachable) -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet" />
    <script>
        // Bootstrap's ".hidden" utility forces display:none; a plain <div> defaults
        // to display:block, so if it's still visible the CDN stylesheet didn't load.
        document.write('<div id="bs-cdn-test" class="hidden"></div>');
    </script>
    <script>
        (function () {
            var test = document.getElementById('bs-cdn-test');
            var cdnLoaded = test && getComputedStyle(test).display === 'none';
            if (test) test.parentNode.removeChild(test);
            if (!cdnLoaded) {
                document.write('<link href="Content/bootstrap.min.css" rel="stylesheet" />');
            }
        })();
    </script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

    <!-- Plugin Themes -->
    <link href="Content/accordion/maximus-accordion.css" rel="stylesheet" />
    <link href="Content/modal/modal.maximus.css" rel="stylesheet" />
    <link href="Content/datepicker/datepicker.maximus.css" rel="stylesheet" />

    <style>
        :root {
            --theme-navy: #1b4c79;
            --theme-navy-dark: #123a5e;
            --theme-purple: #4a4a90;
            --theme-info-blue: #3d7fc4;
            --theme-coral: #e0736b;
            --theme-border: #d9dbe3;
            --theme-bg: #f4f5fa;
        }

        body {
            background: var(--theme-bg);
            font-size: 14px;
            padding: 0 0 40px 0;
        }

        /* ===== TOP BRAND BAR ===== */
        .top-bar {
            background: #fff;
            border-bottom: 1px solid var(--theme-border);
            padding: 10px 24px;
            display: flex;
            align-items: center;
        }

            .top-bar .hamburger-icon {
                font-size: 18px;
                color: #555;
                margin-right: 16px;
                cursor: pointer;
            }

            .top-bar .brand-logo-dot {
                display: inline-block;
                width: 30px;
                height: 30px;
                border-radius: 50%;
                margin-right: 10px;
                background: conic-gradient(#e0736b, #f0b429, #4caf50, #3d7fc4, #7d5fc9, #e0736b);
                flex: 0 0 auto;
            }

            .top-bar .brand-title {
                font-weight: 700;
                color: var(--theme-navy);
                font-size: 15px;
                line-height: 1.1;
                letter-spacing: .5px;
            }

            .top-bar .brand-subtitle {
                font-size: 11px;
                color: #888;
                line-height: 1.1;
            }

        /* ===== MAIN NAVBAR ===== */
        .main-navbar {
            background: var(--theme-navy);
            border: none;
            border-radius: 0;
            margin-bottom: 0;
        }

            .main-navbar .navbar-nav > li > a {
                color: #fff;
                font-size: 13px;
                font-weight: 500;
            }

                .main-navbar .navbar-nav > li > a:hover,
                .main-navbar .navbar-nav > li > a:focus {
                    background: var(--theme-navy-dark);
                    color: #fff;
                }

            .main-navbar .navbar-nav > li > a .glyphicon {
                margin-right: 5px;
            }

        /* ===== PAGE HEADING ===== */
        .page-heading {
            text-align: center;
            color: var(--theme-purple);
            font-weight: 700;
            font-size: 24px;
            margin: 28px 0 24px 0;
        }

        /* ===== SECTION HEADER (mimics "Common Search Criteria") ===== */
        .demo-section {
            margin-bottom: 28px;
            background: transparent;
            border: none;
            box-shadow: none;
        }

        .demo-section .panel-heading {
            background: transparent;
            border: none;
            border-bottom: 1px solid var(--theme-border);
            padding: 0 0 8px 0;
            margin-bottom: 18px;
            font-weight: 700;
            font-size: 15px;
            color: #222;
        }

        .demo-section .panel-body {
            padding: 0;
        }

        .info-icon {
            display: inline-block;
            width: 14px;
            height: 14px;
            line-height: 13px;
            border-radius: 50%;
            border: 1px solid var(--theme-info-blue);
            color: var(--theme-info-blue);
            font-size: 10px;
            font-style: normal;
            text-align: center;
            margin-left: 4px;
            vertical-align: middle;
        }

        /* ===== FORM CONTROLS ===== */
        label {
            font-weight: 700;
            font-size: 13px;
            color: #333;
        }

        .form-control {
            border-color: var(--theme-border);
            border-radius: 4px;
            box-shadow: none;
        }

            .form-control:focus {
                border-color: var(--theme-info-blue);
                box-shadow: 0 0 0 2px rgba(61, 127, 196, 0.15);
            }

        .plugin-buttons .btn {
            margin-right: 8px;
            margin-bottom: 8px;
        }
    </style>

</head>
<body>

    <!-- TOP BRAND BAR -->
    <div class="top-bar">
        <span class="glyphicon glyphicon-align-justify hamburger-icon"></span>
        <span class="brand-logo-dot"></span>
        <div class="brand-text">
            <div class="brand-title">MAXIMUS</div>
            <div class="brand-subtitle">Health Care Authority</div>
        </div>
    </div>

    <!-- MAIN NAVBAR -->
    <nav class="navbar main-navbar">
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li><a href="#">Provider Network Management</a></li>
                <li><a href="#">Medicaid Home</a></li>
                <li><a href="#">Learning</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#">Fee Schedule</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span>autotechadmin</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-out"></span>Log out</a></li>
            </ul>
        </div>
    </nav>

    <div class="container">

        <h2 class="page-heading">Maximus Plugins &ndash; Bootstrap 3 Demo</h2>

        <!-- ================= 1. ACCORDION PLUGIN ================= -->
        <div class="panel panel-default demo-section">
            <div class="panel-heading">Accordion Plugin <i class="info-icon">i</i></div>
            <div class="panel-body">

                <div id="demoAccordion" class="maximus-accordion">

                    <div class="maximus-accordion-item">
                        <div class="maximus-accordion-header">
                            <span class="maximus-accordion-bar"></span>
                            <span class="maximus-accordion-title">Section One</span>
                            <span class="maximus-accordion-arrow">
                                <span class="material-icons">expand_more</span>
                            </span>
                        </div>
                        <div class="maximus-accordion-content">
                            <div class="panel-body">
                                This is the first collapsible section. By default only one section is open at a time.
                            </div>
                        </div>
                    </div>

                    <div class="maximus-accordion-item">
                        <div class="maximus-accordion-header">
                            <span class="maximus-accordion-bar"></span>
                            <span class="maximus-accordion-title">Section Two</span>
                            <span class="maximus-accordion-arrow">
                                <span class="material-icons">expand_more</span>
                            </span>
                        </div>
                        <div class="maximus-accordion-content">
                            <div class="panel-body">
                                Clicking a different header closes the previously open section (unless <code>allowMultiple</code> is enabled).
                            </div>
                        </div>
                    </div>

                    <div class="maximus-accordion-item">
                        <div class="maximus-accordion-header">
                            <span class="maximus-accordion-bar"></span>
                            <span class="maximus-accordion-title">Section Three</span>
                            <span class="maximus-accordion-arrow">
                                <span class="material-icons">expand_more</span>
                            </span>
                        </div>
                        <div class="maximus-accordion-content">
                            <div class="panel-body">
                                Section content can hold any markup, including forms or other plugins.
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>

        <!-- ================= 2. MODAL PLUGIN ================= -->
        <div class="panel panel-default demo-section">
            <div class="panel-heading">Modal Plugin <i class="info-icon">i</i></div>
            <div class="panel-body plugin-buttons">
                <button id="btnDemoAlert" type="button" class="btn btn-success">Show Alert</button>
                <button id="btnDemoConfirm" type="button" class="btn btn-danger">Show Confirm</button>
                <button id="btnDemoCustomModal" type="button" class="btn btn-primary">Open Custom Modal</button>
            </div>
        </div>

        <!-- ================= 3. DATEPICKER PLUGIN ================= -->
        <div class="panel panel-default demo-section">
            <div class="panel-heading">Date Picker Plugin <i class="info-icon">i</i></div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-4">
                        <label>Default <i class="info-icon">i</i></label>
                        <div class="maximus-date-wrapper">
                            <input class="form-control maximus-date-input demo-default-date" placeholder="MM/DD/YYYY">
                            <span class="material-icons maximus-icon">calendar_today</span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label>Future Only <i class="info-icon">i</i></label>
                        <div class="maximus-date-wrapper">
                            <input class="form-control maximus-date-input demo-future-date" placeholder="MM/DD/YYYY">
                            <span class="material-icons maximus-icon">calendar_today</span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label>Disable Weekends <i class="info-icon">i</i></label>
                        <div class="maximus-date-wrapper">
                            <input class="form-control maximus-date-input demo-weekend-date" placeholder="MM/DD/YYYY">
                            <span class="material-icons maximus-icon">calendar_today</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Custom modal markup used by the Modal Plugin demo -->
    <div class="modal fade maximus-modal" id="demoCustomModal" tabindex="-1" aria-labelledby="demoCustomModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h5 class="modal-title" id="demoCustomModalLabel">Custom Modal Example</h5>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="demoName">Name</label>
                        <input type="text" class="form-control" id="demoName" placeholder="Enter your name" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary" id="btnDemoModalSave">Save</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Vendor JS (CDN, each with a local fallback in Scripts/ if the CDN didn't load) -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script>window.jQuery || document.write('<script src="Scripts/jquery-3.7.0.min.js"><\/script>')</script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>window.jQuery && window.jQuery.fn && window.jQuery.fn.modal || document.write('<script src="Scripts/bootstrap.min.js"><\/script>')</script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
    <script>window.moment || document.write('<script src="Scripts/moment.min.js"><\/script>')</script>

    <!-- Plugins -->
    <script src="Scripts/plugins/accordion/maximus.accordion.js"></script>
    <script src="Scripts/plugins/modal/maximus.modal.plugin.js"></script>
    <script src="Scripts/plugins/datepicker/maximus.datePicker.js"></script>

    <!-- Page -->
    <script src="Scripts/pages/plugins-demo.js"></script>

</body>
</html>
