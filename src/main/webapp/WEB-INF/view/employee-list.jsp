<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	
	<%
	String session_username = (String)session.getAttribute("username");
	//session_username = "";
%>
<% if(session_username != null) { %>
	
<!DOCTYPE html>
<html>
<head>
<style>
.bodySize {
  float: right;
  width: 80%;
  margin:10px auto;
  padding-right:3%;
  height: 100%; 
}
.table td{
text-align: center;
}
.table th{
text-align: center;
}
</style>
<link rel="stylesheet" type="text/css" href="/student-management/UrlToReachResourceFolder/css/my-style-sheet.css" >
<meta charset="ISO-8859-1">
<title>Show Employee</title>
</head>
<body>
  
   <jsp:include page="home.jsp"/>
  
   <div class="bodySize">
	<h1 align = "center">Employee Data</h1>
	
	<div align="center">
	<form action="showAddEmployeePage">
		<input class="btn btn-outline-primary" type="submit" value="Add Employee">
		<div align="right">
		<c:url value="/employee-report" var="xlsURL"></c:url>
		
		 <a class = "btn btn-outline-success" href="${xlsURL}">Export to Excel</a>
		 </div>
	</form>
	
	
		<br>
		
		<table class="table table-hover table-bordered" border="1">
			<thead>
				<tr>
					<th>Employee ID</th>
					<th>Name</th>
					<th>Role</th>
					<th>Salary</th>
					<th>Operation</th>
				</tr>

			</thead>

			<c:forEach var="employee" items="${employees}">
				<tr>
					<td>${employee.empId}</td>
					<td>${employee.empName}</td>
					<td>${employee.role}</td>
					<td>${employee.salary}</td>
					<td>
					<a class="btn btn-outline-dark" href="/student-management/payrollEmployee?userId=${employee.empId}" >Pay Roll</a>
					<a class="btn btn-outline-secondary" href="/student-management/updateEmployee?userId=${employee.empId}" >Update</a>
					<a class="btn btn-outline-danger" href="/student-management/deleteEmployee?userId=${employee.empId}" onClick="if(!(confirm('Are you sure you wanna delete this record ?'))) return false">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
	</div>
	
	  </div>
	
  	
</body>
</html>

<% } %>