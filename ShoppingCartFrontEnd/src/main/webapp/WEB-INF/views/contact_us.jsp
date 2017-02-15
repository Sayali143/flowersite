<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="resources/lib/css/navbar.css"/>" rel="stylesheet">
<%-- <link href="<c:url value="resources/lib/css/font-awesome.min.css"/>" rel="stylesheet"> --%>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="contanier-fluid">
<center><h1>&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&nbsp;&nbsp;&nbsp; Contact us&nbsp;&nbsp;&nbsp;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;</h1></center>
<div class="contact_form">
	<form>
	<div class="row">
			<div class="col-sm-3">	
			</div>
			<div class="col-sm-3">	
				<label class="pull-left">Your Full name:</label>
			</div>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="name">
			</div>
			<div class="col-sm-3">	
			</div>
	</div><br>
	<div class="row">
			<div class="col-sm-3">	
			</div>
			<div class="col-sm-3">	
				<label class="pull-left">Your email address:</label>
			</div>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="email">
			</div>
			<div class="col-sm-3">	
			</div>
	</div><br>
	<div class="row">
			<div class="col-sm-3">	
			</div>
			<div class="col-sm-3">	
				<label class="pull-left">Your contact number:</label>
			</div>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="contact">
			</div>
			<div class="col-sm-3">	
			</div>
	</div><br>
	<div class="row">
			<div class="col-sm-3">	
			</div>
			<div class="col-sm-3">	
				<label class="pull-left">Your Enquiry:</label>
			</div>
			<div class="col-sm-3">
				<textarea class="form-control" rows="5" id="comment"></textarea>
			</div>
			<div class="col-sm-3">	
			</div>
	</div><br>
	<div class="row">
			<div class="col-sm-5">	
			</div>
			<div class="col-sm-4">	
				<button type="button" class="btn btn-danger btn-lg pull-right">Submit</button>
			</div>
			<div class="col-sm-3">
			</div>
	</div><br>
	</form>
</div>
</div>

</body>
</html>