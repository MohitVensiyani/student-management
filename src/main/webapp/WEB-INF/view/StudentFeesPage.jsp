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
<title>Student Fees Portal</title>
</head>
<body>
  
   <jsp:include page="home.jsp"/>
  
   <div class="bodySize">
	<h1 align = "center">Stduent Fees Data</h1>
	
	
	<div align="center" style="width: 40%; margin-left: auto;margin-right: auto;">
	
	<table class="table table-hover table-bordered" border="1" >
		<tr>
			<th>Roll No</th>
			<td>${students.roll_no}</td>
		</tr>
		<tr>
			<th>Student Name</th>
			<td>${students.first_name} ${students.middle_name} ${students.last_name}</td>
		</tr>
		<tr>
			<th>Course Name</th>
			<td>${students.course_admit}</td>
		</tr>
		<tr>
			<th>Total Fees</th>
			<td>${students.fees}</td>
		</tr>
		
	</table>
	
	</div>
	
	<div align="center">
		<a class="btn btn-outline-secondary" href="/student-management/addFees?userId=${students.id}">Add Fees</a>
		<br><br>
		
		<table class="table table-hover table-bordered" border="1">
			<thead>
				<tr>
					<th>ID</th>
					<th>Date</th>
					<th>Amount Payed</th>
					<th>Remaining Balance</th>
					
				</tr>

			</thead>

			 <c:forEach var="studentFee" items="${studentFees}">
				<tr>
					<td>${studentFee.fees_id}</td>
					<td>${studentFee.date}</td>
					<td>${studentFee.amount}</td>
					<td>${studentFee.remaining_balance}</td>
					
				</tr>
			</c:forEach>
		</table>
	</div>

	  </div>
	
  	
</body>
</html>