<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	
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
<title>Employee Payroll</title>
</head>
<body>
  
   <jsp:include page="home.jsp"/>
  
   <div class="bodySize">
	<h1 align = "center">Employee PayRoll Data</h1>
	
	
	<div align="center" style="width: 40%; margin-left: auto;margin-right: auto;">
	
	<table class="table table-hover table-bordered" border="1" >
		<tr>
			<th>Employee Id</th>
			<td>${employees.empId}</td>
		</tr>
		<tr>
			<th>Employee Name</th>
			<td>${employees.empName}</td>
		</tr>
		<tr>
			<th>Role</th>
			<td>${employees.role}</td>
		</tr>
		<tr>
			<th>Salary</th>
			<td>${employees.salary}</td>
		</tr>
		
	</table>
	
	</div>
	
	<div align="center">
		<a class="btn btn-outline-secondary" href="/student-management/paySalary?userId=${employees.empId}">Pay Salary</a>
		<br><br>
		
		<table class="table table-hover table-bordered" border="1">
			<thead>
				<tr>
					<th>Month</th>
					<th>Date</th>
					<th>Bonus</th>
					<th>Deduction</th>
					<th>Reason</th>
					<th>Mode of Payment</th>
					<th>Total Salary Payed</th>
					
				</tr>

			</thead>

			 <c:forEach var="salary" items="${salaries}">
				<tr>
					<td>${salary.month}</td>
					<td>${salary.date}</td>
					<td>${salary.bonus}</td>
					<td>${salary.deduction}</td>
					<td>${salary.reason}</td>
					<td>${salary.mode_of_payment}</td>
					<td>${salary.total_payed}</td>
					
				</tr>
			</c:forEach>
		</table>
	</div>

	<%-- <form action="showAddEmployeePage">
		<input class="btn btn-outline-primary" type="submit" value="Add Employee">
		<div align="right">
		<c:url value="/employee-report" var="xlsURL"></c:url>
		
		 <a class = "btn btn-outline-success" href="${xlsURL}">Export</a>
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
					<a class="btn btn-outline-dark" href="/student-management/updateEmployee?userId=${employee.empId}" >Pay Roll</a>
					<a class="btn btn-outline-secondary" href="/student-management/updateEmployee?userId=${employee.empId}" >Update</a>
					<a class="btn btn-outline-danger" href="/student-management/deleteEmployee?userId=${employee.empId}" onClick="if(!(confirm('Are you sure you wanna delete this record ?'))) return false">Delete</a></td>
				</tr>
			</c:forEach>
		</table> --%>
	<!-- 	<br>
	</div> -->
	
	  </div>
	
  	
</body>
</html>