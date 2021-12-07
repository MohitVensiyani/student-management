<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Time Pro</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
       <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/datatables/dataTables.bootstrap4.min.css">
  <link href="vendor/datatables/dataTables.bootstrap4.css">
</head>

</head>

<body id="page-top">
 

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav navbar-light bg-white sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="">
                <div class="sidebar-brand-icon">
                   <img alt="logo" src="assets/image/transparent-blue.png" height="150px;" width="230px;">
                </div>
                <div class="sidebar-brand-text mx-3">
                
                <!-- TIME PRO --></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="start.jsp">
                    <i class="fas fa-fw fa-tachometer-alt text-primary"></i>
                    <span class="text-primary">Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

           

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                   <i class="fa fa-user text-primary"></i>
                    <span class="text-primary">Employee</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Employee Details</h6>
                        <a class="collapse-item text-primary" href="addEmployee.jsp">Employee Add</a>
                        <a class="collapse-item text-primary" href="detailsEmployee.jsp">Employee Details Add</a>
                        <a class="collapse-item text-primary" href="viewEmployee.jsp">Employee Edit</a>
                        <a class="collapse-item text-primary" href="viewEmployee1.jsp">Employee View</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                   <i class="fa fa-file text-primary"></i>
                    <span class="text-primary">Attendance Details</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Attendance Information</h6>
                        <a class="collapse-item text-primary" href="viewAttendance.jsp">Attendance View</a>
                        <a class="collapse-item text-primary" href="viewBreak.jsp">Break View</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
           
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fa fa-tasks text-primary"></i>
                    <span class="text-primary">Task Details</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Task Information</h6>
                        <a class="collapse-item text-primary" href="addTask.jsp">Task Add</a>
                        <a class="collapse-item text-primary" href="viewTask.jsp">Task View</a>
                         </div>
                </div>
            </li>
            
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePa"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fa fa-sign-out-alt text-primary"></i>
                    <span class="text-primary">Leave Details</span>
                </a>
                <div id="collapsePa" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Leave Information</h6>
                        <a class="collapse-item text-primary" href="viewLeaveReport.jsp">View Leave Details</a>
                         </div>
                </div>
            </li>
            
            
             <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePaaa"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fa fa-indent text-primary"></i>
                    <span class="text-primary">Incident Details</span>
                </a>
                <div id="collapsePaaa" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Incident Information</h6>
                        <a class="collapse-item text-primary" href="incidentView.jsp">Incident View</a>
                         </div>
                </div>
            </li>
            
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePbb"
                    aria-expanded="true" aria-controls="collapsePages">
                   <i class="fa fa-credit-card text-primary" aria-hidden="true"></i>
                    <span class="text-primary">Salary Details</span>
                </a>
                <div id="collapsePbb" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Salary Information</h6>
                        <a class="collapse-item text-primary" href="salary.jsp">Salary Add</a>
                        <a class="collapse-item text-primary" href="viewSalary.jsp">Salary View</a>
                        <a class="collapse-item text-primary" href="sendSalary.jsp">Send Salary</a>
                         </div>
                </div>
            </li>

            

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
						 <div class="topbar d-none d-sm-block" style="margin-right: 91%;"></div>
						<a href="logout.jsp" class="btn btn-outline-primary" >Logout</a>
						                        <!-- Nav Item - User Information -->
                        
                           <!--  <a class="nav-link dropdown-toggle" href="logout.jsp" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Logout</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a> -->
                            <!-- Dropdown - User Information -->
                           <!--  <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div> -->
                      
                </nav>
                
         </div>        