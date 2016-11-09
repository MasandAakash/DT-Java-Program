<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UniMusic - A Music Universe</title>
<!--************************************************Bootstrap Links************************************************-->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--***************************************************************************************************************-->
    
<title>UniMusic - A Music Universe</title>
<style>
.navbar-brand
{
	padding: 0px 30px;
	
}

.right
{
	padding: 0px 30px;
}
.navbar
{
	background-color: black;	
}

.navbar-wrapper {
  position: absolute;
  top: 0;
  right: 0;
  left: 0;
  z-index: 20;
}

</style>
    
<link rel= "icon" href="<c:url value="/resources/images/favicon.ico"/>">
<link href="<c:url value="/resources/css/header_footer.css" />" rel="stylesheet">


</head>

<!-- NAVBAR-->
<body  >
<script src="<c:url value="resources/js/jquery-1.12.3.min.js"/>"></script>
<script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>

<div class="navbar-wrapper">
      
      <div class="container" id="outerContainer">
	 	
	 	<div class="navbar navbar-fixed-top navbar-inverse" id="navbar">
	 	 	
	 	 	<div class="container" id="innerContainer"> 

    		<div class="navbar-header">
      			<a class="navbar-brand" href="homePage"><img src="<c:url value='/resources/images/Brand-Image.jpg'/>" alt="Homepage"></a>
	 	 		<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mainMenu" aria-expanded="false" type="button">
	 	 		
	 	 		<span class="sr-only">Toggle navigation</span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
      			
      			</button>
    		</div>
    		<div class="collapse navbar-collapse" id="mainMenu">
                 <ul class="nav navbar-nav">
	 	 			<li><a href="<c:url value="/home" />">Home</a></li>
	 	 			<li><a href="<c:url value="/about" />">About Us</a></li>
	 	 			<li><a href="<c:url value="/product/productList/all" />">Instruments</a></li>
	 	 		 </ul>
                    
                    <ul class="nav navbar-nav navbar-right" >
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a><span class=" glyphicon glyphicon-user" aria-hidden="true"> </span> ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />"><button type="submit" class="btn btn-danger btm-sm" >Logout</button></a></li>

                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />"><button type="submit" class="btn btn-success btm-sm" >Cart</button></a></li>
                            </c:if>

                            <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                <li><a href="<c:url value="/admin"/>"><button type="submit" class="btn btn-warning btm-sm">Admin Controls</button></a></li>
                            </c:if>

                        </c:if>

                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/login" />">Sign In</a></li>
                            <li><a href="<c:url value="/register" />">Sign Up</a></li>
                        </c:if>
                    </ul>
                </div>
            
        </div>
</div>
</div>
</div>
</body>
</html>
  