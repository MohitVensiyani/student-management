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
<title>Show Course</title>
</head>
<body>
  
   <jsp:include page="home.jsp"/>
  
   <div class="bodySize">
	<h1 align = "center">Course Data</h1>

	<div align="center">
	<form action="showAddCoursePage">
		<input class="btn btn-outline-primary" type="submit" value="Add Course">
	</form>
		<br>
		
		<table class="table table-hover table-bordered" border="1">
			<thead>
				<tr>
					<th>Course Id</th>
					<th>Course Name</th>
					<th>Total fees</th>
					<th>Operation</th>
				</tr>

			</thead>

			<c:forEach var="course" items="${courses}">
				<tr>
					<td>${course.course_id}</td>
					<td>${course.course_name}</td>
					<td>${course.total}</td>
					<td><a class="btn btn-outline-secondary" href="/student-management/updateCourse?userId=${course.course_id}" >Update</a>
					<a class="btn btn-outline-danger" href="/student-management/deleteCourse?userId=${course.course_id}" onClick="if(!(confirm('Are you sure you wanna delete this record ?'))) return false">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
	</div>
	
	  </div>
	
  	
</body>
</html>
<% } %>
