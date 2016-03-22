<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">


<title>Login Page</title>
</head>
<body>
<%

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   
   
%>



	<nav class="navbar navbar-custom">
  <div class="container-fluid">
    
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/login.jsp"><FONT COLOR=white>Name and logo</FONT> <img alt="Brand" src="..." class="thumbnails"></a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/login.jsp">Home</a></li>
		
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Courses <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="${pageContext.request.contextPath}/course1.jsp">Course-1</a></li>
            
            <li class="divider"></li>
            <li><a href="${pageContext.request.contextPath}/course2.jsp">Course-2</a></li>
          </ul>
          <li><a href="${pageContext.request.contextPath}/success.jsp">Lectures</a></li>
		  <li><a href="#">Blog</a></li>
		  <% if(session.getAttribute("userid") != null) { %>
		  <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.userid} <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="${pageContext.request.contextPath}/changepassword.jsp">Change Password</a></li>
            
            <li class="divider"></li>
            <li><a href="${pageContext.request.contextPath}/logout" >Log Out</a></li>
			
          </ul>
        </li><% } %>
        </li>
      </ul>
    </div>
  </div>
</nav>
		
	

	<div id="section" class="col-xl-8 col-sm-6">
		<h1>About Us</h1>
	<p>
		London is the capital city of England. It is the most populous city in the United Kingdom,
		with a metropolitan area of over 13 million inhabitants.
	</p>
	<p>
		Standing on the River Thames, London has been a major settlement for two millennia,
		its history going back to its founding by the Romans, who named it Londinium.
	</p>
	</div>
	<% if(session.getAttribute("userid") == null) { %>
	
	<aside>
	<div class="container-fluid">
	<h2>Login </h2>
	
	<% if (session.getAttribute("error") != null) 
	{
	    %><p style="color:red"><%= "Username or Password is incorrect" %></p><%
	   }
	   
	 if (session.getAttribute("loginfirst") != null) 
	{
	    %><p style="color:red"><%= "Login to continue!!" %></p><%
	   }
	     
	 %>
	<form class="form-horizontal" action='login' method="post">
  <div class="form-group">
    <label for="inputError1" class="col-sm-2 control-label">UserName</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputError1" placeholder="User Name" name="userid">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="pwd">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Sign in</button> 
    </div>
  </div>
</form>
<a href="">Forgot Password?</a> 
</div>
	</aside>
	<%
	}
	%>
	<footer>
	<FONT COLOR=white>Copyright © Website.com <br></FONT>	<a href=""><FONT COLOR=#66CCFF>Contact Us</FONT></a>&nbsp;&nbsp;<a href=""><a href=""><FONT COLOR=#66CCFF>Sign Up?</FONT></a>
	</footer>
	<style>
body
{
background-color:  #FFFFCC;
}	
aside
{
float: right;
padding: 20px;
width: 35%;

height: 80%;
}


#section {
    width:65%;
    float:left;
    padding:10px; 
	height: 75%;
}
footer {
	
    text-align:center;
    width:100%;
	height:12%;
	position:absolute;
	bottom:0;
	left:0;
	background:#B80000;
	
}

nav
{
top:0;
position:absolute;
height: 10%;
background: #B80000;

}
.navbar-custom .navbar-nav > li > a {
    color:#66CCFF;
}
ul li:hover ul{
        display: block; 
	}

</style>
    
    
    
    
    <!--
    
<form action='login' method="post">
UserName <input type="text" name="userid" />
Password <input type="password" name="pwd" />
<br>
<input type="submit" value="Submit">
</form>
-->
</body>
</html>