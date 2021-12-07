<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
    
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Add Student</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/student-management/UrlToReachResourceFolder/plugins/images/favicon.png">
    <!-- Custom CSS -->
    <link href="/student-management/UrlToReachResourceFolder/plugins/bower_components/chartist/dist/chartist.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/student-management/UrlToReachResourceFolder/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css">
    <!-- Custom CSS -->
    <link href="/student-management/UrlToReachResourceFolder/css/style.min.css" rel="stylesheet">
    
    
 	 <style>
		.bodySize {
		  float: right;
		  width: 80%;
		  margin:10px auto;
		  padding-right:3%;
		  height: 100%; 
		}
		
	</style>
    
</head>

<body>



    <jsp:include page="home.jsp"/>
  
   <div class="bodySize">


    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <!-- <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div> -->
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
   <!--  <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        ==============================================================
        Topbar header - style you can find in pages.scss
        ==============================================================
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    ==============================================================
                    Logo
                    ==============================================================
                    <a class="navbar-brand" href="dashboard.html">
                        Logo icon
                        <b class="logo-icon">
                            Dark Logo icon
                            <img src="plugins/images/logo-icon.png" alt="homepage" />
                        </b>
                        End Logo icon
                        Logo text
                        <span class="logo-text">
                            dark Logo text
                            <b class="text-dark font-20">UMANG</b>
                            <img src="plugins/images/logo-text.png" alt="homepage" />
                        </span>
                    </a>
                    ==============================================================
                    End Logo
                    ==============================================================
                    ==============================================================
                    toggle and nav items
                    ==============================================================
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                ==============================================================
                End Logo
                ==============================================================
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">

                    ==============================================================



                    Right side toggle and nav items
                    ==============================================================

                    ==============================================================
                    Right side toggle and nav items
                    ==============================================================
                    <ul class="navbar-nav ms-auto d-flex align-items-center">



                        ==============================================================
                        Search
                        ==============================================================
                        <li class="  me-3">

                            <a href="login.html" class="text-white font-medium">
                                <i class="fas fa-unlock-alt"></i> <span> Login</span>
                            </a>

                        </li>
                        ==============================================================
                        User profile and search
                        ==============================================================
                        <li>
                            <a class="profile-pic" href="register.html">
                                <i class="fas fa-user"></i> <span class="text-white font-medium">Register</span></a>
                        </li>
                        ==============================================================
                        User profile and search
                        ==============================================================
                    </ul>
                </div>
            </nav>
        </header> -->
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->

       
        <div class="container-fluid" style="background-color: #F8F8F8">
            <!-- ============================================================== -->
            <!-- Start Page Content -->
            <!-- ============================================================== -->
            <!-- Row -->
            <br>
            <div class="row">
            <br>
                <!-- Column -->

                <!-- Column -->
                <!-- Column -->

                <!-- Column -->

                <div class="mt-2 offset-lg-2 col-lg-8 col-md-8 col-sm-12">
                    <div class="card white-box p-0">
                        <div class="card-heading">
                            <h3 class="box-title mb-0">Student Admission form</h3>
                        </div>
                        <div class="card-body">
                        
                            <form:form action="save-student" modelAttribute="student" method="POST" autocomplete="off" class="form-horizontal form-material" enctype="multipart/form-data" >
                                
                                <form:hidden path="id"/>
	
                                <h5>For College Used Only</h5>
                                <hr>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Course Admitted To</label>
                                            <div class="col-md-12 border-bottom p-0">
                                      
                                                <form:select path="course_admit"  
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email">
                                                   <form:option value="-" label="Select Course"/>
													<form:options items="${courseList}"/>
												</form:select>
                                        
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Division</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="division" type="text" placeholder="Division Enter Here"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Date</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="date" type="date" placeholder="johnathan@admin.com"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Roll No</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="roll_no" type="text" placeholder="Roll no here"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Form no</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="form_no" type="text" placeholder="Form no.."
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <h5 class="font-bold">Kindly Read Important Notes Before Filling-in-Form</h5>
                                <hr>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <ul>
                                            <li>Fll the form carefully</li>
                                            <li>Fll all fields</li>
                                            <li>Strike of Which is Not Applicable</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Attach Photo & Signature</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="file" placeholder=""
                                                    class="form-control p-0 border-0" name="file"
                                                    id="example-email" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h5 class="font-bold">Kindly Read Important Notes Before Filling-in-Form</h5>
                                <hr>
                                <div class="row">

                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Course applied for</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                 <form:input path="course_applied" type="text" placeholder="Form no.."
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">medium</label>

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:radiobutton path="medium" class="form-check-input"  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Marathi"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Marathi</label>
                                                <form:radiobutton path="medium" class="form-check-input "  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Hindi"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Hindi</label>
                                                <form:radiobutton path="medium" class="form-check-input"  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="English"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">English</label>
                                            </div>

                                        </div>

                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Admitted against which
                                                category</label>

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:radiobutton path="admission_category" class="form-check-input"  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Open"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Open</label>
                                                <form:radiobutton path="admission_category" class="form-check-input "  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Reserved"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Reserved</label>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">If Reserved</label>
                                            <div class="col-md-12 border-bottom p-0">
                                               <form:input path="reserved_category" type="text" placeholder="reserved category"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <h5 class="font-bold">1. Personal Information Section</h5>
                                <hr>
                                <div class="row">
                                    <h5 class="font-light">Name of Students </h5>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="last_name" type="text" placeholder="Last Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="first_name" type="text" placeholder="First Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="middle_name" type="text" placeholder="Middle Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!-- ------------------------------------------------------ -->
                                <div class="row mt-2">
                                    <h5 class="font-light">Name of the students as printed on STD.X Passing Certificate
                                    </h5>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="tenth_last_name" type="text" placeholder="Last Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="tenth_first_name" type="text" placeholder="First Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="tenth_middle_name" type="text" placeholder="Middle Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!-- -------------------------------------------------------- -->
                                <div class="row  mt-2">
                                    <h5 class="font-light">Father/Husband Name</h5>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="father_last_name" type="text" placeholder="Last Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="father_first_name" type="text" placeholder="First Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="father_middle_name" type="text" placeholder="Middle Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!-- --------------------------------------------------------- -->
                                <div class="row  mt-2">
                                    <h5 class="font-light">Mother Name </h5>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="mother_last_name" type="text" placeholder="Last Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="mother_first_name" type="text" placeholder="First Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="mother_middle_name" type="text" placeholder="Middle Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!-- --------------------------------------------------------------- -->
                                <div class="row  mt-2">
                                    <h5 class="font-light">Previous Name of the students (In case of change Name) </h5>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="prev_last_name" type="text" placeholder="Last Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="prev_first_name" type="text" placeholder="First Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="prev_middle_name" type="text" placeholder="Middle Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Reason for Change</label>

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:radiobutton path="reason_for_change" class="form-check-input" name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Willingly"/>
                                                <label class="form-check-label me-3"
                                                    for="inlineRadio1">Willingly</label>
                                               <form:radiobutton path="reason_for_change" class="form-check-input " name="inlineRadioOptions"
                                                    id="inlineRadio1" value="After marriage"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">After marriage</label>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="col-lg-8 col-md-8 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Martial Status</label>

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:radiobutton path="martial_status" class="form-check-input" name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Unmarried"/>
                                                <label class="form-check-label me-3"
                                                    for="inlineRadio1">Unmarried</label>
                                                <form:radiobutton path="martial_status" class="form-check-input " name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Married"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Married</label>
                                                <form:radiobutton path="martial_status" class="form-check-input" name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Divorced"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Divorced</label>
                                                <form:radiobutton path="martial_status" class="form-check-input" name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Widowed"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Widowed</label>
                                            </div>

                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">

                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Previous S.N.D.T.U
                                                Enrollment No.</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="prev_sndtu_enrno" type="text" placeholder="Enrollment No"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-12">

                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">D.O.B</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="dob" type="date" class="form-control p-0 border-0"
                                                    name="example-email" id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-12">

                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Place Of Birth</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="place_of_birth" type="text" placeholder="Enter Here.."
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-12">

                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Blood Group</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="blood_group" type="text" placeholder="Enter here.."
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-12">

                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Religion</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="religion" type="text" placeholder="Enter Religion here"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Citizen of (Country
                                                name)</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="" type="text" placeholder="Enter Country Name"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-8 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Student Location
                                                Category</label>

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:radiobutton path="location_category" class="form-check-input"  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Rural"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Rural</label>
                                                <form:radiobutton path="location_category" class="form-check-input "  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Urban"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Urban</label>
                                                <form:radiobutton path="location_category" class="form-check-input "  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Tribal"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Tribal</label>

                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <hr>
                                <h5>Address for Correspondence</h5>

                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Citizen of (Country
                                                name)</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:textarea path="curr_country" class="form-control p-0 border-0" rows="6" cols="0"
                                                    name="example-email" id="example-email"/>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-8 col-sm-12">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-4">
                                                    <label for="example-email" class="col-md-12 p-0">State</label>
                                                    <div class="col-md-12 border-bottom p-0">
                                                        <form:input  path="curr_state" type="text" placeholder="Enter State Name"
                                                            class="form-control p-0 border-0" name="example-email"
                                                            id="example-email"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-4">
                                                    <label for="example-email" class="col-md-12 p-0">District</label>
                                                    <div class="col-md-12 border-bottom p-0">
                                                        <form:input path="curr_district" type="text" placeholder="Enter District Name"
                                                            class="form-control p-0 border-0" name="example-email"
                                                            id="example-email"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-4">
                                                    <label for="example-email" class="col-md-12 p-0">Tahasil</label>
                                                    <div class="col-md-12 border-bottom p-0">
                                                        <form:input path="curr_tahasil" type="text" placeholder="Enter Tahasil Name"
                                                            class="form-control p-0 border-0" name="example-email"
                                                            id="example-email"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-4">
                                                    <label for="example-email" class="col-md-12 p-0">pincode</label>
                                                    <div class="col-md-12 border-bottom p-0">
                                                        <form:input path="curr_pincode" type="text" placeholder="Enter Pincode"
                                                            class="form-control p-0 border-0" name="example-email"
                                                            id="example-email"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <label for="example-email" class="col-md-12 p-0">Location
                                                    Category</label>

                                                <div class="col-md-12 border-bottom p-0">
                                                    <form:radiobutton path="curr_loc_category" class="form-check-input" 
                                                        name="inlineRadioOptions" id="inlineRadio1" value="City"/>
                                                    <label class="form-check-label me-3" for="inlineRadio1">City</label>
                                                    <form:radiobutton path="curr_loc_category" class="form-check-input " 
                                                        name="inlineRadioOptions" id="inlineRadio1" value="Town"/>
                                                    <label class="form-check-label me-3" for="inlineRadio1">Town</label>
                                                    <form:radiobutton path="curr_loc_category" class="form-check-input" 
                                                        name="inlineRadioOptions" id="inlineRadio1" value="Village"/>
                                                    <label class="form-check-label me-3"
                                                        for="inlineRadio1">Village</label>

                                                </div>
                                            </div>
                                        </div>








                                    </div>
                                </div>

                                <hr>
                                <h5>Permanent Address (Write only if different than " Correspondence Address")</h5>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Citizen of (Country
                                                name)</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:textarea path="per_country" class="form-control p-0 border-0" rows="6" cols="0"
                                                    name="example-email" id="example-email"/>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-8 col-sm-12">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-4">
                                                    <label for="example-email" class="col-md-12 p-0">State</label>
                                                    <div class="col-md-12 border-bottom p-0">
                                                        <form:input path="per_state" type="text" placeholder="Enter State Name"
                                                            class="form-control p-0 border-0" name="example-email"
                                                            id="example-email"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-4">
                                                    <label for="example-email" class="col-md-12 p-0">District</label>
                                                    <div class="col-md-12 border-bottom p-0">
                                                        <form:input path="per_district" type="text" placeholder="Enter District Name"
                                                            class="form-control p-0 border-0" name="example-email"
                                                            id="example-email"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-4">
                                                    <label for="example-email" class="col-md-12 p-0">Tahasil</label>
                                                    <div class="col-md-12 border-bottom p-0">
                                                       <form:input path="per_tahasil" type="text" placeholder="Enter Tahasil Name"
                                                            class="form-control p-0 border-0" name="example-email"
                                                            id="example-email"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group mb-4">
                                                    <label for="example-email" class="col-md-12 p-0">pincode</label>
                                                    <div class="col-md-12 border-bottom p-0">
                                                        <form:input path="per_pincode" type="text" placeholder="Enter Pincode"
                                                            class="form-control p-0 border-0" name="example-email"
                                                            id="example-email"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <label for="example-email" class="col-md-12 p-0">Location
                                                    Category</label>

                                                <div class="col-md-12 border-bottom p-0">
                                                    <form:radiobutton path="per_loc_category" class="form-check-input" 
                                                        name="inlineRadioOptions" id="inlineRadio1" value="City"/>
                                                    <label class="form-check-label me-3" for="inlineRadio1">City</label>
                                                    <form:radiobutton path="per_loc_category" class="form-check-input " 
                                                        name="inlineRadioOptions" id="inlineRadio1" value="Town"/>
                                                    <label class="form-check-label me-3" for="inlineRadio1">Town</label>
                                                    <form:radiobutton path="per_loc_category" class="form-check-input " 
                                                        name="inlineRadioOptions" id="inlineRadio1" value="Village"/>
                                                    <label class="form-check-label me-3"
                                                        for="inlineRadio1">Village</label>

                                                </div>
                                            </div>
                                        </div>








                                    </div>
                                </div>

                                <hr>
                                <h5>Contact Detail</h5>
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Phone NO 1</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="std1" type="text" placeholder="STD Code."
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Phone NO 1</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="phone1" type="text" placeholder="Phone No."
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Phone NO 2</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="std2" type="text" placeholder="STD Code."
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Phone NO 2</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="phone2" type="text" placeholder="Phone No."
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Mobile No.</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="mobile_no" type="text" placeholder="Mobile No."
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Email</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="email" type="email" placeholder="Email"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h5 class="font-bold">2. Legal Information Section</h5>
                                <hr>
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Domicile State</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="domicile_state" type="text" placeholder="Domicile State"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Cast Category</label>

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:radiobutton path="cast_category" class="form-check-input"  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Open"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Open </label>
                                                <form:radiobutton path="cast_category" class="form-check-input " name="inlineRadioOptions"
                                                    id="inlineRadio1" value="Reserved"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Reserved</label>


                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Cast Category (If
                                                Reserved)</label>

                                            <div class="col-md-12 border-bottom p-0">
                                               	<form:radiobutton path="res_cast_category" class="form-check-input"  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="SC"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">SC </label>
                                                <form:radiobutton path="res_cast_category" class="form-check-input "  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="ST"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">ST</label>
                                                <form:radiobutton path="res_cast_category" class="form-check-input"  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="(A) NT"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">(A) NT </label>
                                                <form:radiobutton path="res_cast_category" class="form-check-input "  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="(B) NT"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">(B) NT</label>
                                                <form:radiobutton path="res_cast_category" class="form-check-input"  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="(C) NT"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">(C) NT </label>
                                                <form:radiobutton path="res_cast_category" class="form-check-input "  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="(WJ)SBC"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">(WJ)SBC</label>
                                                <form:radiobutton path="res_cast_category" class="form-check-input"  name="inlineRadioOptions"
                                                    id="inlineRadio1" value="OBC"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">OBC </label>



                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Cast</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="cast" type="text" placeholder="Cast"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Sub Cast</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <form:input path="sub_cast" type="text" placeholder="Sub Cast"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">

                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">If Physically
                                                Challenged</label>

                                            <div class="col-md-12 border-bottom p-0">
                                                <form:checkbox path="physically_chalenged" class="form-check-input"
                                                    name="inlineRadioOptions" id="inlineRadio1" value="Visually Impaired"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Visually
                                                    Impaired </label>
                                                <form:checkbox path="physically_chalenged" class="form-check-input" 
                                                    name="inlineRadioOptions" id="inlineRadio1" value="Speech and or Hearing Impaired"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Speech and or Hearing Impaired</label>
                                                <form:checkbox path="physically_chalenged" class="form-check-input" 
                                                    name="inlineRadioOptions" id="inlineRadio1" value="Orthopedically Impaired"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Orthopedically Impaired </label>
                                                <form:checkbox path="physically_chalenged" class="form-check-input " 
                                                    name="inlineRadioOptions" id="inlineRadio1" value="Learning Disable"/>
                                                <label class="form-check-label me-3" for="inlineRadio1">Learning Disable</label>


                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <h5 class="font-bold">3. Social Reservation Information Section [Check () Whichever is
                                    applicable, write name of supporting documents attaches, in Setion 7]</h5>
                                <hr>
                                <label for="example-email" class="col-md-12 p-0">If Physically
                                    Challenged</label>
                                    
                                        <div class="form-group mb-4" align="center">
                        <div class="col-sm-12">
                            <input type="submit" value="Submit" class="btn btn-success"/>
                            </form:form>
                        </div>
                    </div>
                                
                                </div>
                        </div>

                    </div>





                
                   
                   
                   
                </div>
            </div>
        </div>
    </div>
 


    </div>
    <!-- Row -->
    <!-- ============================================================== -->
    <!-- End PAge Content -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Right sidebar -->
    <!-- ============================================================== -->
    <!-- .right-sidebar -->
    <!-- ============================================================== -->
    <!-- End Right sidebar -->
    <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    
    
   

    
    
    
    
    
    
    
   
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/app-style-switcher.js"></script>
    <script src="plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="plugins/bower_components/chartist/dist/chartist.min.js"></script>
    <script src="plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="js/pages/dashboards/dashboard1.js"></script>
</body>

</html>