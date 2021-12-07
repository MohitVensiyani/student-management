<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
<title>Attendance Report</title>
</head>
<body>


	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js">
		
	</script>
	<script
		src="//cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js">
		
	</script>


	<!-- <script type="text/javascript" src="/student-management/UrlToReachResourceFolder/js/downloadFile.js"></script>
 -->
	<jsp:include page="home.jsp" />

	<div class="bodySize">
		<h1 align="center">Ledger Report</h1>

		<div align="center">
			<%-- <form action="showAddExpensePage">
		<div align="right">
		<c:url value="/report" var="xlsURL"></c:url>
		
		 <a class = "btn btn-outline-success" href="${xlsURL}">Export to Excel</a>
		 </div>
	</form> --%>

			<button onclick="exportData()" class="btn btn-outline-success">Export
				To Excel</button>


			<div align="center">
				<form:form action="attendance-report" modelAttribute="courseList"
					method="get">
					<label><b>From : </b></label>
					<input type="date" class="form-control" style="width: 20%"
						id="from" name="from">
					<label><b>To : </b></label>
					<input type="date" class="form-control" style="width: 20%;" id="to"
						name="to">
					<label><b>Class : </b></label>
					<select class="form-control" style="width: 20%;" name="class_name">
						<option value="-" >Select Class</option>
						<c:forEach items="${courseList}" var="courseList">
							<option value="${courseList}">${courseList}</option>
						</c:forEach>
					</select>
					<br>
					<input type="submit" class="btn btn-outline-secondary" value="Go">
				</form:form>
			</div>


			<br>

			<table id="ledger" class="table table-hover table-bordered"
				border="1">

				<thead>
					<tr>
						<th>Sr no</th>
						<th>Date</th>
						<th>Class</th>
						<th>Subject</th>
						<th>Student</th>
						<th>Attendance</th>

					</tr>

				</thead>

				<c:forEach var="attendanceReport" items="${attendanceReport}">
					<tr>
						<td></td>
						<td>${attendanceReport.date}</td>
						<td>${attendanceReport.class_name}</td>
						<td>${attendanceReport.subject_name}</td>
						<td>${attendanceReport.student_name}</td>
						<td>${attendanceReport.attendance}</td>

					</tr>
				</c:forEach>

			</table>

			<script>
				function exportData() {
					$(document).ready(function() {

						$("#ledger").table2excel({
							filename : "attendance-report.xls"
						});
					});
				}
			</script>
			<br>
		</div>

	</div>


</body>
</html>

<%
}
%>