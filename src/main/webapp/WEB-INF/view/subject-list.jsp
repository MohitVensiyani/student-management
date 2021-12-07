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
<title>Show Subject</title>
</head>
<body>

	<jsp:include page="home.jsp" />

	<div class="bodySize">
		<h1 align="center">Subject Data</h1>

		<div align="center">
			<form action="showAddSubjectPage">
				<input class="btn btn-outline-primary" type="submit"
					value="Add Subject">
				<%-- <div align="right">
		<c:url value="/report" var="xlsURL"></c:url>
		
		 <a class = "btn btn-outline-success" href="${xlsURL}">Export to Excel</a>
		 </div> --%>
			</form>



			<br>

			<table class="table table-hover table-bordered" border="1">
				<thead>
					<tr>
						<th>Sr no.</th>
						<th>Subject</th>
						<th>Class</th>
						<th>Teacher</th>
						<th>Operation</th>
					</tr>

				</thead>

				<c:forEach var="subjects" items="${subjects}">
					<tr>
						<td></td>
						<td>${subjects.subject_name}</td>
						<td>${subjects.class_name}</td>
						<td>${subjects.teacher_name}</td>
						<td><a class="btn btn-outline-secondary"
							href="/student-management/updateSubject?userId=${subjects.subject_id}">Update</a>
							<a class="btn btn-outline-danger"
							href="/student-management/deleteSubject?userId=${subjects.subject_id}"
							onClick="if(!(confirm('Are you sure you wanna delete this record ?'))) return false">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
			<br>
		</div>

	</div>


</body>
</html>

<%
}
%>