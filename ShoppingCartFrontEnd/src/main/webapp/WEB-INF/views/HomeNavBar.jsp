<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="resources/lib/css/navbar.css"/>">
<%-- <link rel="stylesheet" href="<c:url value="resources/lib/css/font-awesome.min.css"/>"> --%>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="<c:url value="resources/lib/css/bootstrap.min.css"/>">
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
						<li><a href="https://www.facebook.com/" class="social-icons" id="facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="https://twitter.com/" class="social-icons" id="twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="https://www.linkedin.com/" class="social-icons" id="linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="https://plus.google.com/" class="social-icons" id="google"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	    	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
	      <a class="navbar-brand" href="Home">Spring</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	     <ul class="nav navbar-nav">
	      <li class="active"><a href="#">Home</a></li>
	      <c:forEach items="${categoryList}" var="categoryId">
	     	<li><a href="<c:url value='/productdisplay?categoryId=${categoryId.id}'/>">${categoryId.name}</a>
		  	</li>
	      </c:forEach>
	    </ul>
 	<form class="navbar-form navbar-right">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
         <ul class="nav navbar-nav navbar-right" style="margin-top: -6px;margin-bottom: -7px";>
      
		    <c:if test="${empty loggedInUserID}">
		        <li><a href="registration">SIGN UP</a></li>
      			<li><a href="login">LOGIN</a></li>
		    </c:if>   
		    <%--  <c:if test="${isAdmin}">
		    	<li><a href="category">Category</a></li>
			   	<li><a href="subcategory">SubCategory</a></li>
			   	<li><a href="supplier">Supplier</a></li>
			    <li><a href="product">Product</a></li>
		    </c:if> --%>
		     <c:if test="${not empty loggedInUserID}">
		          
		    	<li><a>Welcome ${loggedInUser}</a></li>
		    	<li><a href="cart">Cart(${cartItemCount})</a></li>
		        <li><a href="logout">LOGOUT</a></li>
		       
		    </c:if>
    </ul>
     </div>
      </form>
  	
	  </div>
	</nav>
</body>
</html>