<%
	String session_username = (String)session.getAttribute("username");
	//session_username = "";
%>

 
 
<div class="row">
<!-- <nav class="navbar navbar-expand-lg navbar-light bg-light"> -->
<div class="container-fluid p-3 mb-2 bg-light text-dark">
	<% if(session_username != null) { %>
 	<div style="float:left;">
 		<a class="px-2" href="${pageContext.request.contextPath}/add_list">ADD</a>
  		<a class="px-2" href="${pageContext.request.contextPath}/dashboard">LIST</a>
 	</div>
 	<% } %>
 	<div  class="px-3" style="float:right">
 		<% if(session_username == null) { %>
 		<form class="d-flex" action = "login">
				<input class="btn btn-outline-success px-3" type="submit" value="Login">
		</form>
		<% } %>
		
		<% if(session_username != null) { %>
		
		<form class="d-flex" action="logout">
		<div clas="row">
		Welcome <%= session.getAttribute("username") %> &nbsp;
				<input class="btn btn-outline-danger px-3" type="submit" value="logout">
		</div>
		</form>
		<% } %>
 	</div>
</div>
</div>

<!-- </nav>  -->
 
