<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.dropdown {
    float: left;
    overflow: visible;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
   /* padding: 14px 16px; */
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: grey;
}

.dropdown-content {
    display: none;
    position: absolute;
    padding-top:10px;
    
    background-color: white;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    text-align:center;
}

.dropdown-content a {
    float: none;
    color: black;
    padding-top:5px;
    width:100%;
    background: white;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
<div id="header">
	<div class="container">
      <h1 id="logo"><a href="/home"><img src="images/logo.png" height="60px" width="240px"></img></a></h1>
	  
	  
	  
      <div id="navigation" class="header-right">
      <c:if test="${sessionScope.name == null}">
        <ul>
		  <li><a href="/home" style="font-size:15px; text-decoration:none;">Home</a></li>
          <li><a href="/register" style="font-size:15px; text-decoration:none;">SignUp</a></li>
          
          <li><a href="/login" style="font-size:15px; text-decoration:none;">SignIn</a></li>
        </ul>
        </c:if>
        <c:if test="${sessionScope.name != null}">
        <ul>
         <li><a href="/home" style="font-size:15px; text-decoration:none;">Home</a></li>
    	
    	
    	<li>
    	 <div class="dropdown" style="color: white;">Welcome ${sessionScope.name}!
    <button class="dropbtn" style="background-color: inherit;">
      <i class="fa fa-caret-down"> </i>
      
      <div class="dropdown-content">
      <a href="#" style="color:black; padding-left:5px; ">Account</a>
      <a href="#" style="color:black; padding-left:5px;">Settings</a>
     
    </div>
    </button>
    
    
  </div> 
  
  </li>
    <!-- <li><a href="/feedback" style="font-size:15px; text-decoration:none;">Feedback</a></li>  -->
    	<li><a href="/logout" style="text-decoration:none;">Log out</a></li>
    </ul>
  </c:if>
        
      </div>
    </div>
	</div>
	</html>