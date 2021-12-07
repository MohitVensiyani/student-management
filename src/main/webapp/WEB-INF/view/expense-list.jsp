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
<title>Show Expense</title>
</head>
<body>
  
   <jsp:include page="home.jsp"/>
  
   <div class="bodySize">
	<h1 align = "center">Expense Data</h1>
	
	<div align="center">
	<form action="showAddExpensePage">
		<input class="btn btn-outline-primary" type="submit" value="Add Expense">
		<div align="right">
		<c:url value="/report" var="xlsURL"></c:url>
		
		 <a class = "btn btn-outline-success" href="${xlsURL}">Export to Excel</a>
		 </div>
	</form>
		
	
	
		<br>
		
		<table class="table table-hover table-bordered" border="1">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Purpose</th>
					<th>Date</th>
					<th>Amount</th>
					<th>Operation</th>
				</tr>

			</thead>

			<c:forEach var="expense" items="${expenses}">
				<tr>
					<td>${expense.expense_id}</td>
					<td>${expense.expense_name}</td>
					<td>${expense.description}</td>
					<td>${expense.expense_date}</td>
					<td>${expense.amount}</td>
					<td><a class="btn btn-outline-secondary" href="/student-management/updateExpense?userId=${expense.expense_id}" >Update</a>
					<a class="btn btn-outline-danger" href="/student-management/deleteExpense?userId=${expense.expense_id}" onClick="if(!(confirm('Are you sure you wanna delete this record ?'))) return false">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
	</div>
	
	  </div>
	
  	
</body>
</html>

<% } %>