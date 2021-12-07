<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">

    <title>Login Page</title>
<link rel="stylesheet" type="text/css" href="/student-management/UrlToReachResourceFolder/css/signin.css" >

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
  </head>
  <body class="text-center">
  
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
  
  
<%--   	<jsp:include page="header.jsp" />
 --%>  	<br>
  
    <div class="body-class" align="center">
<main class="form-signin">
  <form action="login_action" method="post">
<!--     <img class="mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
 -->    <h1 class="h3 mb-3 fw-normal">Admin Login</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="username" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">User Id</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
  </form>
</main>

</div>
    
  </body>
</html>
