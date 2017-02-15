 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SERVER DOWN</title>
</head>
<body>
<div class="row" style="padding-top:50px;">
	<div class="col-sm-4">
	</div>
	<div class="col-sm-4 alert alert-danger">
			<center><strong><i>Please format your PC</i></strong></center>
			<div class="alert alert-info">${message}${exception}</div>
	</div>
	<div class="col-sm-4">
	</div>
</div>

</body>
</html> 