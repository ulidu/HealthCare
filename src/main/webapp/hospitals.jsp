<%@page import="model.Hospital"%>
<%@page import="com.paf.HospitalService"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>HealthCare</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/nvd3/nv.d3.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="assets/plugins/rickshaw/rickshaw.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css" media="screen">
    <link href="assets/plugins/mapplic/css/mapplic.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/dashboard.widgets.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="pages/css/pages-icons.css" rel="stylesheet" type="text/css">
    <link class="main-stylesheet" href="pages/css/themes/light.css" rel="stylesheet" type="text/css" />
</head>

<body class="fixed-header dashboard menu-pin">
    <!-- BEGIN SIDEBPANEL-->
    <nav class="page-sidebar" data-pages="sidebar">
        <!-- BEGIN SIDEBAR MENU TOP TRAY CONTENT-->
        <!-- END SIDEBAR MENU TOP TRAY CONTENT-->
        <!-- BEGIN SIDEBAR MENU HEADER-->
        <div class="sidebar-header">
            <a href="index.jsp"><img src="assets/img/logo.png" alt="logo" class="brand" data-src="assets/img/logo.png" width="180"></a>
        </div>
        <!-- END SIDEBAR MENU HEADER-->
        <!-- START SIDEBAR MENU -->
        <div class="sidebar-menu">
            <!-- BEGIN SIDEBAR MENU ITEMS-->
            <ul class="menu-items">
                <li class="m-t-30 ">
                    <a href="index.jsp" class="title">
                        <span class="title">Dashboard</span>
                    </a>
                    <span class="icon-thumbnail"><i data-feather="home"></i></span>
                </li>
                <li class="">
                    <a href="appointments.jsp"><span class="title">Appointments</span></a>
                    <span class="icon-thumbnail"><i data-feather="calendar"></i></span>
                </li>
                <li class="">
                    <a href="hospitals.jsp"><span class="title">Hospitals</span></a>
                    <span class="icon-thumbnail"><i data-feather="shield"></i></span>
                </li>
                <li class="">
                    <a href="doctors.jsp"><span class="title">Doctors</span></a>
                    <span class="icon-thumbnail"><i data-feather="thermometer"></i></span>
                </li>
                <li class="">
                    <a href="users.jsp"><span class="title">Users</span></a>
                    <span class="icon-thumbnail"><i data-feather="users"></i></span>
                </li>
                <li class="">
                    <a href="payments.jsp"><span class="title">Payments</span></a>
                    <span class="icon-thumbnail"><i data-feather="credit-card"></i></span>
                </li>

            </ul>

        </div>
        <!-- END SIDEBAR MENU -->
    </nav>
    <!-- END SIDEBAR -->
    <!-- END SIDEBPANEL-->

    <!-- START PAGE-CONTAINER -->
    <div class="page-container ">
        <!-- START HEADER -->
        <div class="header ">
            <!-- START MOBILE SIDEBAR TOGGLE -->
            <a href="#" class="btn-link toggle-sidebar d-lg-none pg pg-menu" data-toggle="sidebar">
            </a>
            <!-- END MOBILE SIDEBAR TOGGLE -->
            <div class="">
                <div class="brand inline">
                    <img src="assets/img/logo.png" alt="logo" data-src="assets/img/logo.png" data-src-retina="assets/img/logo_2x.png" width="180">
                </div>


            </div>
            <div class="d-flex align-items-center">

                <!-- START User Info-->
                <div class="pull-left p-r-10 fs-14 font-heading d-lg-inline-block d-none m-l-20">

                </div>
                <div class="dropdown pull-right d-lg-inline-block d-none">
                    <button class="profile-dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="thumbnail-wrapper d32 circular inline">
                            <img src="assets/img/github.png" alt="" data-src="assets/img/github.png" width="32" height="32">
                        </span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right profile-dropdown" role="menu">

                        <a target="_blank" href="https://github.com/pafhealthcareproject/HealthCare" class="dropdown-item"><i class="fa fa-external-link"></i> Healthcare Github Repository</a>

                        <a target="_blank" href="https://github.com/pafhealthcareproject/HealthCare" class="  ">

                        </a>
                    </div>
                </div>
                <!-- END User Info-->

            </div>
        </div>
        <!-- END HEADER -->


        <!-- START PAGE CONTENT WRAPPER -->
        <div class="page-content-wrapper ">
            <!-- START PAGE CONTENT -->
            <div class="content sm-gutter">
                <!-- START JUMBOTRON -->
                <div data-pages="parallax">
                    <div class="container-fluid p-l-25 p-r-25 sm-p-l-0 sm-p-r-0">
                        <div class="inner">
                            <!-- START BREADCRUMB -->
                            <ol class="breadcrumb sm-p-b-5">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Hospitals</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- END JUMBOTRON -->
                <!-- START CONTAINER FLUID -->
                <div class="container-fluid p-l-25 p-r-25 p-t-0 p-b-25 sm-padding-10">
                    <!-- START ROW -->

                    <!-- START card -->
                    <div class="card card-transparent">

                        <div class="m-0 row card-body">

                            <div class="col-lg-12 sm-no-padding">
                                <div class="card card-transparent">
                                    <div class="card-body no-padding">
                                        <div id="card-advance" class="card card-default">
                                            <div class="card-header  ">
                                                <div class="card-title">Hospitals
                                                </div>
                                                <div class="card-controls">
                                                    <ul>

                                                        <li><a href="#" class="card-collapse" data-toggle="collapse"><i class="card-icon card-icon-collapse"></i></a>
                                                        </li>


                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <h3>
                                                    <span class="semi-bold">Hospital</span> Management</h3>
                                                <br>
                                                <div>



                                                    <!-- START card -->

                                                    <div class="card-header ">

                                                        <div class="pull-right">
                                                            <div class="col-xs-12">
                                                                <input type="text" id="search-table" class="form-control pull-right" placeholder="Search">
                                                            </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                    <div class="card-body">
                                                        <table class="table table-hover demo-table-search table-responsive-block" id="tableWithSearch">
                                                            <thead>
                                                                <tr>
                                                                    <th>Hospital ID</th>
                                                                    <th>Hospital Name</th>
                                                                    <th>Hospital Address</th>
                                                                    <th>Hospital Phone</th>
                                                                    <th>Hospital Username</th>
                                                                    <th>Hospital Password</th>
                                                                    <th style="text-align: center">Update</th>
                                                                    <th style="text-align: center">Remove</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            <%= out.print(pageContext.findAttribute("test")); %>

                                                            <%

                                                                response.getWriter().print("my string with HTML etc");



                                                            %>


<td class="v-align-middle"><form method="post" action="hospitals.jsp"><input type="submit" value="Update" class="btn btn-complete btn-cons"><input type="hidden" value=hospitalID></form>


                                                                    </td>
                                                                    <td class="v-align-middle"><form method="post" action="hospitals.jsp"><input type="submit" value="Remove" class="btn btn-danger"><input type="hidden" value=hospitalID></form>


                                                                    </td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <!-- END card -->




                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END WIDGET -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- START CONTAINER FLUID -->
            <div class=" container-fluid  container-fixed-lg footer">
                <div class="copyright sm-text-center">
                    <p class="small no-margin pull-left sm-pull-reset">
                        <span class="hint-text">Copyright &copy; 2020 </span>
                        <span class="font-montserrat"><a target="_blank" href="https://github.com/pafhealthcareproject/HealthCare/graphs/contributors">Healthcare</a></span>.
                        <span class="hint-text">All rights reserved. </span>

                    </p>

                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- END COPYRIGHT -->
        </div>
    </div>
            <!-- BEGIN VENDOR JS -->
            <script src="assets/plugins/feather-icons/feather.min.js" type="text/javascript"></script>
            <script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
            <script src="assets/plugins/modernizr.custom.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
            <script src="assets/plugins/popper/umd/popper.min.js" type="text/javascript"></script>
            <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery/jquery-easy.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-ios-list/jquery.ioslist.min.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-actual/jquery.actual.min.js"></script>
            <script src="assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
            <script type="text/javascript" src="assets/plugins/select2/js/select2.full.min.js"></script>
            <script type="text/javascript" src="assets/plugins/classie/classie.js"></script>
            <script src="assets/plugins/switchery/js/switchery.min.js" type="text/javascript"></script>
            <script src="assets/plugins/nvd3/lib/d3.v3.js" type="text/javascript"></script>
            <script src="assets/plugins/nvd3/nv.d3.min.js" type="text/javascript"></script>
            <script src="assets/plugins/nvd3/src/utils.js" type="text/javascript"></script>
            <script src="assets/plugins/nvd3/src/tooltip.js" type="text/javascript"></script>
            <script src="assets/plugins/nvd3/src/interactiveLayer.js" type="text/javascript"></script>
            <script src="assets/plugins/nvd3/src/models/axis.js" type="text/javascript"></script>
            <script src="assets/plugins/nvd3/src/models/line.js" type="text/javascript"></script>
            <script src="assets/plugins/nvd3/src/models/lineWithFocusChart.js" type="text/javascript"></script>
            <script src="assets/plugins/rickshaw/rickshaw.min.js"></script>
            <script src="assets/plugins/mapplic/js/hammer.min.js"></script>
            <script src="assets/plugins/mapplic/js/jquery.mousewheel.js"></script>
            <script src="assets/plugins/mapplic/js/mapplic.js"></script>
            <script src="assets/js/dashboard.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-datatable/media/js/jquery.dataTables.min.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-datatable/extensions/TableTools/js/dataTables.tableTools.min.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-datatable/media/js/dataTables.bootstrap.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-datatable/extensions/Bootstrap/jquery-datatable-bootstrap.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/plugins/datatables-responsive/js/datatables.responsive.js"></script>
            <script type="text/javascript" src="assets/plugins/datatables-responsive/js/lodash.min.js"></script>

            <!-- END VENDOR JS -->
            <!-- BEGIN CORE TEMPLATE JS -->
            <!-- BEGIN CORE TEMPLATE JS -->
            <script src="pages/js/pages.js"></script>
            <!-- END CORE TEMPLATE JS -->
            <!-- BEGIN PAGE LEVEL JS -->
            <script src="assets/js/scripts.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL JS -->
            <!-- END CORE TEMPLATE JS -->
            <!-- BEGIN PAGE LEVEL JS -->
            <script src="assets/js/dashboard.js" type="text/javascript"></script>
            <script src="assets/js/scripts.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL JS -->
            <!-- BEGIN PAGE LEVEL JS -->
            <script src="assets/js/card.js" type="text/javascript"></script>
            <script src="assets/js/scripts.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL JS -->
            <!-- BEGIN PAGE LEVEL JS -->
            <script src="assets/js/datatables.js" type="text/javascript"></script>
            <script src="assets/js/scripts.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL JS -->
</body>

</html>
