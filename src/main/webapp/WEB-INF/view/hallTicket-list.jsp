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
<title>Show Hall Ticket</title>
</head>
<body>
  
   <jsp:include page="home.jsp"/>
  
   <div class="bodySize">
	<h1 align = "center">Hall Ticket Data</h1>
	
	<div align="center">
	<form action="showAddHallTicketPage">
		<input class="btn btn-outline-primary" type="submit" value="New HallTicket">
		<%-- <div align="right">
		<c:url value="/report" var="xlsURL"></c:url>
		
		 <a class = "btn btn-outline-success" href="${xlsURL}">Export to Excel</a>
		 </div> --%>
	</form>
	
	
		<br>
		
		<table class="table table-hover table-bordered" border="1">
			<thead>
				<tr>
					<th>Roll No</th>
					<th>Student Name</th>
					<th>Subject</th>
					<th>Operation</th>
				</tr>

			</thead>

			<c:forEach var="hallTicket" items="${hallTickets}">
				<tr>
					<td>${hallTicket.roll_no}</td>
					<td>${hallTicket.candidate_name}</td>
					<td>${hallTicket.subject}</td>
					<td><a class="btn btn-outline-secondary" href="/student-management/printHallTicket?userId=${hallTicket.hall_ticket_id}" >Print</a>
				</tr>
			</c:forEach>
		</table>
		<br>
	</div>
	
	  </div>
	
  	
</body>
</html>
<%}%>