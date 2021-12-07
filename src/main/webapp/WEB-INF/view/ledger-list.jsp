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


		body
		{
		    counter-reset: Serial;          
		}

		table
		{
		    border-collapse: separate;
		}

		tr td:first-child:before
		{
		  counter-increment: Serial;      
		  content: counter(Serial); 
		}


</style>
<link rel="stylesheet" type="text/css" href="/student-management/UrlToReachResourceFolder/css/my-style-sheet.css" >
<meta charset="ISO-8859-1">
<title>Ledger</title>
</head>
<body>


<script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js">
</script>
<script src="//cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js">
</script>


<!-- <script type="text/javascript" src="/student-management/UrlToReachResourceFolder/js/downloadFile.js"></script>
 -->  
   <jsp:include page="home.jsp"/>
  
   <div class="bodySize">
	<h1 align = "center">Ledger Report</h1>
	
	<div align="center">
	<%-- <form action="showAddExpensePage">
		<div align="right">
		<c:url value="/report" var="xlsURL"></c:url>
		
		 <a class = "btn btn-outline-success" href="${xlsURL}">Export to Excel</a>
		 </div>
	</form> --%>
	
	<button onclick="exportData()" class="btn btn-outline-success">Export To Excel</button>
	
		
		<div align="center">
			<form action="show-report" method="get">
				<label><b>From : </b></label><input type="date" class="form-control" style="width: 20%" id="from" name="from">	
				<label><b>To : </b></label><input type="date" class="form-control" style="width: 20%;" id="to" name="to">	<br>
				<input type="submit" class="btn btn-outline-secondary" value="Go">
			</form>
		</div>
		
	
		<br>
		
		<table id="ledger" class="table table-hover table-bordered" border="1">
	
			<thead>
				<tr>
					<th>Sr no</th>
					<th>Purpose Type</th>
					<th>ID</th>
					<th>Date</th>
					<th>Debit Amount (-)</th>
					<th>Credit Amount (+)</th>
					
				</tr>

			</thead>

			<c:forEach var="credit" items="${credit}" varStatus="status">
				<tr>
					<td></td>
					<td>${creditPurpose[status.index]}</td>
					<td>${creditId[status.index]}</td>
					<td>${creditDate[status.index]}</td>
					<td></td>
					<td>${credit}</td>
					
				</tr>
			</c:forEach>
			<c:forEach var="debit" items="${debit}" varStatus="status">
				<tr>
					<td></td>
					<td>${debitPurpose[status.index]}</td>
					<td>${debitId[status.index]}</td>
					<td>${debitDate[status.index]}</td>
					<td>${debit}</td>
					<td></td>
				
				</tr>
			</c:forEach>
			
			<tr>
				<th colspan="4">Grand Total</th>
				<th>${debitSum }</th>
				<th>${creditSum}</th>
				
			</tr>
		</table>
		
		<script>
		function exportData(){
		 $(document).ready(function () {
		
		    $("#ledger").table2excel({
		        filename: "ledger.xls"
		    });
		 });
		}
  
</script>
		<br>
	</div>
	
	  </div>
	
  	
</body>
</html>

<% } %>