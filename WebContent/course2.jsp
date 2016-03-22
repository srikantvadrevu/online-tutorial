<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">




</head>

<title>Course -1</title>
<body>
<%

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);

   //String userid=session.getAttribute("userid");

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
      <a class="navbar-brand" href="${pageContext.request.contextPath}/login.jsp">Name and logo <img alt="Brand" src="..." class="thumbnails"></a>
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
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">User Name <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="${pageContext.request.contextPath}/changepassword.jsp">Change Password</a></li>
            
            <li class="divider"></li>
            <li><a href="${pageContext.request.contextPath}/logout" >Log Out</a></li>
			
          </ul>
        </li><% } %>
		  
      </ul>
    </div>
  </div>
</nav>
		
	<h2>Course -2 syllabus</h2>
	
	<footer>
	<FONT COLOR=white>Copyright © Website.com <br></FONT>	<a href=""><FONT COLOR=#66CCFF>Contact Us</FONT></a>
	</footer>
	<style>
body
{
background-color:  #FFFFCC;
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
background-color: #B80000;
}



.navbar-custom .navbar-nav > li > a {
    color:#66CCFF;
}
.navbar-custom .navbar-brand {
    color:white	;
}




ul li:hover ul{
        display: block; 
	}

</style>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

 
 
 
 <!--  

<form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout" />
</form>

<form action="${pageContext.request.contextPath}/changepassword.jsp" method="post">
    <input type="submit" value="Change Password" />
</form>
-->
 
 
 
 
 
</body>



</html>