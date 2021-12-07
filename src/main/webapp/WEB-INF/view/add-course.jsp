<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/student-management/UrlToReachResourceFolder/css/courses.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Add Course</title>
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
                    <h3 class="title">Add Course</h3>
                    <form:form action="save-course" modelAttribute="course" method="POST">
                    <form:hidden path="course_id" />
		  				<br>
                       <div class="row mb-3">
					    <label class="col-sm-2 col-form-label"> Course Name</label>
					    <div class="col-sm-10">
					      <form:input path="course_name" type="text" class="form-control" id="inputEmail3" />
					    </div>
					  </div>
					  <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Prospectus Fees</label>
					    <div class="col-sm-10">
					      <form:input path="prospectus_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					    <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Registration Fees</label> 
					    <div class="col-sm-10">
					      <form:input path="registration_fees" type="text" class="form-control"
					       id="datepicker"/>
					    </div>
					  </div>
					  
					    <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Tution Fees</label>
					    <div class="col-sm-10">
					      <form:input path="tution_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Library Fees</label>
					    <div class="col-sm-10">
					      <form:input path="library_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">University Enrollment Fees</label>
					    <div class="col-sm-10">
					      <form:input path="university_enr_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">University Exam Fees</label>
					    <div class="col-sm-10">
					      <form:input path="university_exam_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">College Exam Fees</label>
					    <div class="col-sm-10">
					      <form:input path="college_exam_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Id Card Fees</label>
					    <div class="col-sm-10">
					      <form:input path="id_card_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Eligibility Fees</label>
					    <div class="col-sm-10">
					      <form:input path="eligibility_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Clearance Fees</label>
					    <div class="col-sm-10">
					      <form:input path="clearance_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Extra Curricular Activity</label>
					    <div class="col-sm-10">
					      <form:input path="extra_curricular_activity" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Uniform Fees</label>
					    <div class="col-sm-10">
					      <form:input path="uniform_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Study Tour Fees</label>
					    <div class="col-sm-10">
					      <form:input path="study_tour_fees" type="text" class="form-control" id="inputPassword3"/>
					    </div>
					  </div>
					  
					   <div class="row mb-3">
					    <label class="col-sm-2 col-form-label">Total</label>
					    <div class="col-sm-10">
					      <form:input path="total" type="text" class="form-control" id="inputPassword3"/>
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