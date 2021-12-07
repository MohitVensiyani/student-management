<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/fees-management/UrlToReachResourceFolder/css/register.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Pay Salary</title>
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
                    <h3 class="title">Pay Salary</h3>
                    
                   <form:form action="save-salary" modelAttribute="salary" method="GET">
                    <form:hidden path="salary_id" />
                    <form:hidden path="empId" />
		  				<br>
                       <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Month</label>
					    <div class="col-sm-10">
					      <form:select path="month" class="form-control" id="inputEmail3">
					      	<option selected>Select Month</option>
						    <option value="January">January</option>
						    <option value="February">February</option>
						    <option value="March">March</option>
						    <option value="April">April</option>
						    <option value="May">May</option>
						    <option value="June">June</option>
						    <option value="July">July</option>
						    <option value="August">August</option>
						    <option value="September">September</option>
						    <option value="October">October</option>
						    <option value="November">November</option>
						    <option value="December">December</option>
					      </form:select>
					    </div>
					  </div>
					  <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Date</label>
					    <div class="col-sm-10">
					      <form:input path="date" type="date" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Bonus</label>
					    <div class="col-sm-10">
					      <form:input path="bonus" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Deduction</label>
					    <div class="col-sm-10">
					      <form:input path="deduction" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Reason</label>
					    <div class="col-sm-10">
					      <form:input path="reason" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Mode of Payment</label>
					    <div class="col-sm-10">
					      <form:select path="mode_of_payment" type="text" class="form-control" id="inputPassword3">
					      	<option selected>Select Mode of Payment</option>
						    <option value="Cash">Cash</option>
						    <option value="Bank Transfer">Bank transfer</option>
						    <option value="Online Payment">Online Payment</option>
						    <option value="Check">Check</option>
					      </form:select>
					    </div>
					  </div>
					 <%--  <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Total Payed</label>
					    <div class="col-sm-10">
					      <form:input path="total_payed" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div> --%>
					  
					  
					  <input type="submit" value="Pay" class="btn btn-outline-success">
                        
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