<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	
	
	<%
	String session_username = (String)session.getAttribute("username");
	//session_username = "";
%>
<% if(session_username != null) { %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Dashboard</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/dashboard/">

    

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="/student-management/UrlToReachResourceFolder/css/dashboard/dashboard.css" rel="stylesheet">
  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">Umang Geetai College <br>of Womens's Education</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
<!--   <input class="form-control form-control-dark w-80" type="text" placeholder="Search" aria-label="Search">
 -->  <div class="navbar-nav">
    <div class="nav-item text-nowrap" style="margin-right: 9px;margin-top: 4px;margin-bottom: 4px;">
    <form action="logout">
      	<input class="btn btn-danger" value="Sign out" type="submit"> 
      	
      </form>
    </div>
  </div>
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3"><br>
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/student-management/showDashboard">
              <span data-feather="home"></span>
              Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/student-management/showStudent">
              <span data-feather="users"></span>
              Student Data
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/student-management/showEmployee">
              <span data-feather="users"></span>
              Employee Data
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/student-management/showExpense">
              <span data-feather="file"></span>
              Expenses
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/student-management/showHallTicket">
              <span data-feather="file-text"></span>
              Hall Ticket
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/student-management/showCourse">
              <span data-feather="file-text"></span>
              Course Master
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/student-management/showSubject">
              <span data-feather="file-text"></span>
              Subject
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="/student-management/showAttendance">
              <span data-feather="file-text"></span>
              Attendance
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Reports</span>
          <!-- <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle"></span>
          </a> -->
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="/student-management/showLedger">
              <span data-feather="file-text"></span>
              Ledger Report
            </a>
             <li class="nav-item">
            <a class="nav-link" href="/student-management/showAttendanceReport">
              <span data-feather="file-text"></span>
              Attendance Report
            </a>
          </li>
         
        </ul>
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
<!--       <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
          
          
 -->          
          
          
        </div>
      </div>


    </main>
  </div>
</div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

      <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
      <script src="/student-management/UrlToReachResourceFolder/css/dashboard/dashboard.js"></script>
  </body>
</html>
<% } %>