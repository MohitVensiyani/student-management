<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%
String session_username = (String) session.getAttribute("username");
//session_username = "";
%>
<%
if (session_username != null) {
%>



<!DOCTYPE html>
<html>
<head>
<style>
.bodySize {
	float: right;
	width: 80%;
	margin: 10px auto;
	padding-right: 3%;
	height: 100%;
}

.table td {
	text-align: center;
}

.table th {
	text-align: center;
}

body {
	counter-reset: Serial;
}

table {
	border-collapse: separate;
}

tr td:first-child:before {
	counter-increment: Serial;
	content: counter(Serial);
}
</style>
<link rel="stylesheet" type="text/css"
	href="/student-management/UrlToReachResourceFolder/css/my-style-sheet.css">
<meta charset="ISO-8859-1">
<title>Attendance Control</title>
</head>
<body>

	<jsp:include page="home.jsp" />

	<div class="bodySize">
		<h1 align="center">Attendance Control</h1>
		<br>
<form:form action="save-attendance" modelAttribute="attendance"
				method="post">
		<table class="table table-hover table-bordered" border="1">
			<thead>
				<tr>
					<th>Sr no.</th>
					<th>Student Name</th>
					<th>Attendance</th>
				</tr>

			</thead>
			
				<form:hidden path="attendance_id"/>
				<form:hidden path="class_name"/>
				<form:hidden path="subject_name"/>
				<form:hidden path="date"/>
				<c:forEach var="studentList" items="${studentList}">
					<tr>
						<td></td>
						<td>${studentList}</td>
						<td><form:select path="attendance" id="attendance" name="attendance">
								<option value="Present">Present</option>
								<option value="Absent">Absent</option>
								<option value="Leave with excuse">Leave with Excuse</option>
						</form:select></td>
					</tr>
				</c:forEach>
				
				
		</table>
		<center>
		<input type="submit" class="btn btn-outline-success">
		</center>
			</form:form>
		<br>
	</div>

	</div>


</body>
</html>
<%}%>
