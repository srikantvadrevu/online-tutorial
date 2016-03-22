<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">




<style type="text/css">
        body { font-family:Arial, Helvetica, Sans-Serif; font-size:0.8 em;}
        #report { border-collapse:collapse;}
        #report h4 { margin:0px;padding:0px; }
        #report img { float:right;}
        #report ul { margin:10px 0 10px 40px; padding:0px;}
        #report th {  url(header_bkg.png) repeat-x scroll center left; color:red;padding:7px 15px;  text-align:left;}
        #report td {  none repeat-x scroll center left; color:#000; padding:7px 15px; }
        #report tr.odd td {  url(row_bkg.png) repeat-x scroll center left; cursor:pointer; }
        #report div.arrow { background:transparent url(arrows.png) no-repeat scroll 0px -16px; width:16px; height:16px; display:block;}
        #report div.up { background-position:0px 0px;}
</style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">  
        $(document).ready(function(){
            $("#report tr:odd").addClass("odd");
            $("#report tr:not(.odd)").hide();
            $("#report tr:first-child").show();
            
            $("#report tr.odd").click(function(){
                $(this).next("tr").toggle();
                $(this).find(".arrow").toggleClass("up");
            });
            //$("#report").jExpand();
        });
    </script>





</head>

<title>Success</title>
<body>
<%

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);

   //String userid=session.getAttribute("userid");
   String user= (String)session.getAttribute("userid");
if (session.getAttribute("userid") == null)
{
	session.setAttribute("loginfirst", "login first");
	response.sendRedirect("login.jsp");
}
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
		  <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> ${sessionScope.userid}  <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="${pageContext.request.contextPath}/changepassword.jsp">Change Password</a></li>
            
            <li class="divider"></li>
            <li><a href="${pageContext.request.contextPath}/logout" >Log Out</a></li>
			
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
		
	

    <table id="report" width="150" style="table-layout:fixed" align = "justify">
        <tr>
            <th  colspan= "2"><br>Subject</th>
        </tr>
        <tr>
            <td>Week1 </td>

            <td align="right"><div class="arrow" ></div></td>
        </tr>
        <tr>
            <td colspan="2">

                Additional information 
                <ul type = "none">
                    <li><a href="#" id="playvideo" onclick="playme()">Class 1</a></li>
                    <li><a href=# id="playvideo" onclick="playme2()">Class 2</a></li>
		    <li><a href=#>Class 3</a></li>
                </ul>
                
            </td>
        </tr>
               <tr>
            <td>Week2 </td>

            <td align="right"><div class="arrow"></div></td>
        </tr>
        <tr>
            <td colspan="2">

                Additional information
                <ul>
                    
                    <li><a href=#>Class 2</a></li>
		    <li><a href=#>Class 3</a></li>
                </ul>
                
            </td>
        </tr>
        <tr>
            <td>Week3 </td>

            <td align="right"><div class="arrow"></div></td>
        </tr>
        <tr>
            <td colspan="2">

                Additional information
                <ul>
                    <li><a href=#>Class 1</a></li>
                    <li><a href=#>Class 2</a></li>
		    <li><a href=#>Class 3</a></li>
                </ul>
                
            </td>
        </tr>
        <tr>
            <td>Week4 </td>

            <td align="right"><div class="arrow"></div></td>
        </tr>
        <tr>
            <td colspan="2">

                Additional information
                <ul>
                    <li><a href=#>Class 1</a></li>
                    <li><a href=#>Class 2</a></li>
		    <li><a href=#>Class 3</a></li>
                </ul>
                
            </td>
        </tr>
        <tr>
            <td>Week5 </td>

            <td align="right"><div class="arrow"></div></td>
        </tr>
        <tr>
            <td colspan="2">

                Additional information
                <ul>
                    <li><a href=#>Class 1</a></li>
                    <li><a href=#>Class 2</a></li>
		    <li><a href=#>Class 3</a></li>
                </ul>
                
            </td>
        </tr>
    </table>
    </table>
    <aside>
	
    <iframe id="video1" width="520" height="360"   frameborder="0" allowfullscreen></iframe><br>
	<a id="a" download style="visibility:hidden;" > download</a>
	</aside>
	
	<footer>
	<FONT COLOR=white>Copyright © Website.com <br></FONT>	<a href=""><FONT COLOR=#66CCFF>Contact Us</FONT></a>
	</footer>
	<style>
body
{
background-color:  #FFFFCC;
}	

table {
    *border-collapse: collapse; /* IE7 and lower */
    border-spacing: 0; 
	
}
th:first-child {
    border-radius: 6px 0 0 0;
}

th:last-child {
    border-radius: 0 6px 0 0;
}

th:only-child{
    border-radius: 6px 6px 0 0;
}

aside{
	float: right;
	padding: 100px;
	width: 65%;
	height: 80%;
	bottom: 12%;
	right: 0;
	position:absolute;
	}

footer {
	
    text-align:center;
    width:100%;
	height:11%;
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



.navbar-custom .navbar-brand {
    color:white	;
}

.navbar-custom .navbar-nav > li > a {
    color:#66CCFF;
}




ul li:hover ul{
        display: block; 
	}

</style>



<script>
function playme() {
document.getElementById("video1").src = 'http://www.youtube.com/embed/WY32nnKrB70';
document.getElementById("a").href="./first.jpg";
document.getElementById("a").style.visibility="visible";
}
function playme2() {
document.getElementById("video1").src = 'http://www.youtube.com/v/XGSy3_Czz8k';
}
</script>
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