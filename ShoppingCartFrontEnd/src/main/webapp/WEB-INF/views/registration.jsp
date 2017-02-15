<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="<c:url value="resources/img/register-background.jpg" />">
<br>
<div class="row">
<form action="register" method="POST">
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4" style="box-shadow:1px 2px 3px 2px gray;color:white;">
		<h2>Please Register here.....</h2>
			<div class="form-group">
			    <label>ID</label>
			    <input type="text" class="form-control" id="id" name="id">
			 </div>
			  <div class="form-group">
			    <label>Name</label>
			    <input type="text" class="form-control" id="name" name="name" >
			  </div>
			  <div class="form-group">
			    <label>Password:</label>
			    <input type="password" class="form-control" id="password" name="password">
			  </div>
			  <div class="form-group">
			    <label>Contact</label>
			    <input type="text" class="form-control" id="contact" name="contact" >
			  </div>
			 <div class="form-group">
				    <label>Email address:</label>
				    <input type="email" class="form-control" id="mail" name="mail"><br>
				 </div>
			  <button type="submit" class="btn btn-block btn-success">Submit</button><br>
		</div>
		<div class="col-sm-4">
		</div>
	</form>
	</div>

</body>
</html>