<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/student-management/UrlToReachResourceFolder/css/register.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Add Expense</title>
</head>
<body style="background-color: rgb(248,248,248) ;">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

<jsp:include page="home.jsp"/>
  
   <div class="bodySize">
	<br>
	
	<div class="form-bg" align="center">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <div class="form-container">
                    <h3 class="title">Add Expense</h3>
                    <form:form action="save-expense" modelAttribute="expense" method="POST">
                    <form:hidden path="expense_id" />
		  				<br>
                       <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Name</label>
					    <div class="col-sm-10">
					      <form:input path="expense_name" type="text" class="form-control" id="inputEmail3" />
					    </div>
					  </div>
					  <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Purpose</label>
					    <div class="col-sm-10">
					      <form:input path="description" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					    <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Date</label> 
					    <div class="col-sm-10">
					      <form:input path="expense_date" type="date" class="form-control"
					       id="datepicker"/>
					    </div>
					  </div>
					  
					    <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Amount</label>
					    <div class="col-sm-10">
					      <form:input path="amount" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					  <input type="submit" value="Add" class="btn btn-outline-success">
                        
                    </form:form>
                    
                     
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<script >
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll("datepicker");
    var instances = M.Datepicker.init(elems, options);
  });

  // Or with jQuery

  $(document).ready(function(){
    $("datepicker").datepicker();
  });
</script>


</body>
</html>