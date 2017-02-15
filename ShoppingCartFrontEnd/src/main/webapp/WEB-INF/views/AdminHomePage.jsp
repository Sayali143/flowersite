<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="resources/lib/css/navbar.css"/>" rel="stylesheet">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="<c:url value="resources/lib/css/font-awesome.min.css"/>" rel="stylesheet">
<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>
</head>
<body>
<div class="header_top"><!--header_top-->
	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<ul class="nav nav-pills">
						<li><a href="#" class="contactinfo"><i class="fa fa-phone"></i> +91 91 58 48 74 44</a></li>
						<li><a href="#" class="contactinfo"><i class="fa fa-envelope"></i>Flower@gmail.com</a></li>
				</ul>
			</div>
			<div class="col-sm-7">
				<div class="social-icons pull-right">
					<ul class="nav navbar-nav">
						<li><a href="#" class="social-icons" id="facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" class="social-icons" id="twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" class="social-icons" id="linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" class="social-icons" id="dribble"><i class="fa fa-dribbble"></i></a></li>
						<li><a href="#" class="social-icons" id="google"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Flower site</a>
    </div>
    <c:if test="${not empty loggedInUserID}">
	    <c:if test="${isAdmin==true}">
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="#">Home</a></li>
		      <li><a href="category">Manage Category</a></li>
		      <li><a href="product">Manage Product</a></li>
		      <li><a href="supplier">Manage Supplier</a></li>
		    </ul>
	    </c:if>
	 </c:if>
    <ul class="nav navbar-nav navbar-right">
	      <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
	 </ul>
	 
  </div>
</nav>
</body>
</html>