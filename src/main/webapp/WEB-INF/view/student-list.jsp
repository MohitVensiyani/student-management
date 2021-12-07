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
<title>Show Student</title>
</head>
<body>
  
    <jsp:include page="home.jsp"/>
  
   <div class="bodySize">
	<h1 align = "center">Student Data</h1>

	<div align="center">
	<form action="showAddStudentPage">
		<input class="btn btn-outline-primary" type="submit" value="Add Student">
	</form>
		<br>
		
		
		
		<table class="table table-hover table-bordered" border="1">
			<thead>
				<tr>
					<th>Roll No</th>
					<th>Student Name</th>
					<th>Course</th>
					<th>Division</th>
					<th>Operation</th>
				</tr>

			</thead>

			<c:forEach var="student" items="${students}">
				<tr>
					<td>${student.roll_no}</td>
					<td>${student.first_name} ${student.middle_name} ${student.last_name}</td>
					<td>${student.course_admit}</td>
					<td>${student.division}</td>
					<td>
					<a class="btn btn-outline-dark" href="/student-management/feesStudent?userId=${student.id}" >Fees</a>
					<a class="btn btn-outline-secondary" href="/student-management/updateStudent?userId=${student.id}" >Update</a>
					<a class="btn btn-outline-danger" href="/student-management/deleteStudent?userId=${student.id}" onClick="if(!(confirm('Are you sure you wanna delete this record ?'))) return false">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
	</div>
	
	  </div>
	
  	
</body>
</html>

<% } %>