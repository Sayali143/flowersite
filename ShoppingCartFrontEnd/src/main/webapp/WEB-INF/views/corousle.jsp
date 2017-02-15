<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value="resources/lib/css/navbar.css"/>" rel="stylesheet">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="<c:url value="resources/corousel/corousel.jpg"/>" height="100px"  width="1500px"/>
		<div class="carousel-caption">
			<h1>On Birthday</h1>
			<h3>Up to 30% off</h3>
		</div>
    </div>

    <div class="item">
      <img src="<c:url value="resources/corousel/corousel1.jpg"/>" height="100px"  width="1500px"/>
		<div class="carousel-caption">
			<h1>On Valentine day</h1>
			<h3>Up to 50% off</h3>
		</div>
    </div>

    <div class="item">
      <img src="<c:url value="resources/corousel/corousel2.jpg"/>" height="100px"  width="1500px"/>
	  <div class="carousel-caption">
			<h1>On Special day offer</h1>
			<h3>Up to 20% off any flowers</h3>
		</div>
    </div>
    
    <div class="item">
      <img src="<c:url value="resources/corousel/corousel3.jpg"/>" height="100px"  width="1500px"/>
	  <div class="carousel-caption">
			<h1>On Rose day </h1>
			<h3>Up to 30% off any flowers</h3>
		</div>
    </div>
  </div> 
</div>

<div class="slogan">
		<h1>Welcome</h1>
		<h3>Welcome Guest! Would you like to log yourself in?<br>
			Or would you prefer to create an account?</h3><br>
</div>

</body>
</html>