 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%-- <%@ page import="infosai.entity.*"%>
<%@ page import="infosai.model.*"%> --%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>INFOSAI</title>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.all.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="assets/css/style2.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
         <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    </head>
    <body>
<%
          
    String adname=(String)session.getAttribute("username");
    System.out.println("username----" +adname);
		 
      
        %> 
        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                 <h3> <img alt="logo" src="assets/image/timeProLogo.jpeg" height="40px;" width="40px;">  Time Pro</h3>
                   
                </div>

                 <ul class="list-unstyled components">
                   
                    <li>
                         <a href="#admin" data-toggle="collapse" aria-expanded="false">
                            <i class="fa fa-user"></i>
                            Employee
                        </a>
                        <ul class="collapse list-unstyled" id="admin">
                            <li><a href="addEmployee.jsp">Add Employee</a></li>
                            <li><a href="viewEmployee.jsp">Employee View</a></li>
                            <!-- <li><a href="employeeDocuments.jsp">Employee Document</a></li>  -->
                        </ul>
                    </li>
                    
                     <li>
                         <a href="#att" data-toggle="collapse" aria-expanded="false">
                           <i class="fa fa-file"></i>
                            Attendance Details
                        </a>
                        <ul class="collapse list-unstyled" id="att">
                            <li><a href="viewAttendance.jsp">Attendance View</a></li>
                             <li><a href="viewBreak.jsp">Break View</a></li>
                        </ul>
                    </li>
                    
                    
                    
                    <li>
                         <a href="#ta" data-toggle="collapse" aria-expanded="false">
                           <i class="fa fa-tasks"></i>
                            Task Details
                        </a>
                        <ul class="collapse list-unstyled" id="ta">
                             <li><a href="addTask.jsp">Add Task Form</a></li>
                            <li><a href="viewTask.jsp">Task Details View</a></li>
                        </ul>
                    </li>
                    
                     <li>
                         <a href="#le" data-toggle="collapse" aria-expanded="false">
                           <i class="fa fa-sign-out "></i>
                            Leave Details
                        </a>
                        <ul class="collapse list-unstyled" id="le">
                            <!--  <li><a href="leaveFormAdd.jsp">Add Leave Form</a></li> -->
                            <li><a href="viewLeaveReport.jsp">Leave Details View</a></li>
                        </ul>
                    </li>
                    
                    <li>
                         <a href="#inci" data-toggle="collapse" aria-expanded="false">
                           <i class="fa fa-indent"></i>
                            Incident View
                        </a>
                        <ul class="collapse list-unstyled" id="inci">
                        <!--     <li><a href="viewAttendance.jsp">Attendance View</a></li>-->
                             <li><a href="incidentView.jsp">incident View</a></li> 
                        </ul>
                    </li>
                    
                   
                   
                    
                     <li>
                         <a href="#sal" data-toggle="collapse" aria-expanded="false">
                           <i class="fa fa-money"></i>
                            Salary Details
                        </a>
                        <ul class="collapse list-unstyled" id="sal">
                            <li><a href="salary.jsp">Add Salary</a></li>
                            <li><a href="viewSalary.jsp">Salary View</a></li><!-- 
                            <li><a href="taskEmployee.jsp">Employee Task</a></li>  -->
                        </ul>
                    </li>
                   
                    
                    
                 <!--    <li>
                         <a href="#emp" data-toggle="collapse" aria-expanded="false">
                           <i class="fa fa-user"></i>
                           Report
                        </a>
                        <ul class="collapse list-unstyled" id="emp">
                            <li><a href="report.jsp">PaySlip</a></li>
                             </ul>
                    </li> -->
                   

                </ul>
                 </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="logout.jsp">Log Out</a></li>
                               
                            </ul>
                        </div>
                    </div>
                </nav>   

               



       