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
:root {
    --red: hsl(0, 78%, 62%);
    --cyan: hsl(180, 62%, 55%);
    --orange: hsl(34, 97%, 64%);
    --blue: hsl(212, 86%, 64%);
    --varyDarkBlue: hsl(234, 12%, 34%);
    --grayishBlue: hsl(229, 6%, 66%);
    --veryLightGray: hsl(0, 0%, 98%);
    --weight1: 200;
    --weight2: 400;
    --weight3: 600;
}

body {
    font-size: 15px;
    font-family: 'Poppins', sans-serif;
    background-color: var(--veryLightGray);
}

.attribution { 
    font-size: 11px; text-align: center; 
}
.attribution a { 
    color: hsl(228, 45%, 44%); 
}

h1:first-of-type {
    font-weight: var(--weight1);
    color: var(--varyDarkBlue);

}

h1:last-of-type {
    color: var(--varyDarkBlue);
}

@media (max-width: 400px) {
    h1 {
        font-size: 1.5rem;
    }
}

.header {
    text-align: center;
    line-height: 0.8;
    margin-bottom: 50px;
    margin-top: 100px;
}

.header p {
    margin: 0 auto;
    line-height: 2;
    color: var(--grayishBlue);
}


.box p {
    color: var(--grayishBlue);
}

.box {
    border-radius: 5px;
    box-shadow: 0px 30px 40px -20px var(--grayishBlue);
    padding: 30px;
    margin: 20px;  
}

img {
    float: right;
}

@media (max-width: 450px) {
    .box {
        height: 200px;
    }
}

@media (max-width: 950px) and (min-width: 450px) {
    .box {
        text-align: center;
        height: 180px;
    }
}

.cyan {
    border-top: 3px solid var(--cyan);
}
.red {
    border-top: 3px solid var(--red);
}
.blue {
    border-top: 3px solid var(--blue);
}
.orange {
    border-top: 3px solid var(--orange);
}

h2 {
    color: var(--varyDarkBlue);
    font-weight: var(--weight3);
}


@media (min-width: 950px) {
    .row1-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
    .row2-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .box-down {
        position: relative;
        top: 150px;
    }
    .box {
        width: 20%;
     
    }
    .header p {
        width: 30%;
    }
    
}

.bodySize {
  float: center;
  width: 120%;
  margin:5px;
  padding-right:2%;
  height: 100%;
  padding-left: 10%;
  
  
}
.table td{
text-align: center;
}
.table th{
text-align: center;
}

/* .container{
	height:100%;
	display: flex;
	align-items: center;
	justify-content: center;
	width:80%;
} */
</style>


<meta charset="ISO-8859-1">
<title>DashBoard</title>
 <link rel="stylesheet" href="/student-management/UrlToReachResourceFolder/css/dashboard.css" >

<link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;0,600;1,200;1,400;1,600&display=swap"
    rel="stylesheet">
</head>
<body>
  
   <jsp:include page="home.jsp"/>
  
   <div class="bodySize" >
		 <div class="header">
    
  </div>
  <div class="row1-container">
    <div class="box box-down cyan">
      <h2>Student Data</h2>
      <p>Fill the Admission form for student and manage their fees</p>
      <a href="/student-management/showStudent">
      <img src="/student-management/UrlToReachResourceFolder/images/student.png" alt="">
      </a>
    </div>

    <div class="box red">
      <h2>Employee Data</h2>
      <p>Manage the employee data and their salary</p>
      <a href="/student-management/showEmployee">
      <img src="/student-management/UrlToReachResourceFolder/images/employee.png" alt="">
      </a>
    </div>

    <div class="box box-down blue">
      <h2>Hall Ticket</h2>
      <p>Generate hall ticket of student for their exams</p>
      <a href="/student-management/showHallTicket">
      <img src="/student-management/UrlToReachResourceFolder/images/id-card.png" alt="">
      </a>
    </div>
  </div>
  <div class="row2-container">
    <div class="box orange">
      <h2>Expenses</h2>
      <p>Manage the college other expenses</p>
      <a href="/student-management/showExpense">
      <img src="/student-management/UrlToReachResourceFolder/images/expenses.png" alt=""></a>
    </div>
  </div>

		
		
		
	
	</div>
	
		
	
  	
</body>
</html>

<%} %>