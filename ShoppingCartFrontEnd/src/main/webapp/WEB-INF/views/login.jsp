<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>
</head>
<body background="<c:url value="resources/img/background.jpg" />">
<div class="container-fluid">
<form action="validate" method="POST">
	<div class="row" style="padding-top:70px;color:white;">
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4" style="box-shadow:1px 2px 3px 2px gray;">
		<center><h2>Login</h2></center>
			<div class="form-group">
			    <label for="email">Email address:</label>
			    <input type="text" class="form-control" id="emailId" name="emailId"><br>
			 </div>
			  <div class="form-group">
			    <label for="pwd">Password:</label>
			    <input type="password" class="form-control" id="password" name="password"><br>
			  </div>
			  <button type="submit" class="btn btn-block btn-success">Log-in</button><br>
		</div>
		<div class="col-sm-4">
		</div>
	</div>
	</form>
</div>
</body>
</html>