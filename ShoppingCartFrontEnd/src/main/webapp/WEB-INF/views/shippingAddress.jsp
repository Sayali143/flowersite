<html>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shiiping Address</title>
 <link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>
</head>
<body>
  <div class="container" style="margin-bottom: 19px">
    <center><h1><Strong>Shipping Address</Strong></h1></center>
        <form:form role="form" action="${flowExecutionUrl}&_eventId=submitShippingAddress"  commandName="shippingAddress">
			<div class="row">
				<div class="col-sm-6 form-group">
				  <label for="address">Address</label>
				  <form:textarea type="text" class="form-control"
					path="line1" ></form:textarea>
				</div>
				<div class="col-sm-6 form-group">
					<label for="city">City</label>
					<form:input type="text" class="form-control"
					  path="city" ></form:input>
				</div>
			</div>
			<div class="row">
			  <div class="col-sm-6 form-group">
				<label for="state">State</label>
				<form:input type="text" class="form-control"
				  path="state" ></form:input>
			  </div>
			  <div class="col-sm-6 form-group">
				<label for="country">Country</label>
				<form:input type="text" class="form-control"
				  path="country" ></form:input>
			  </div>
			</div>
			<div class="row">
			  <div class="col-sm-6 form-group">
				<label for="zipcode">Zipcode</label>
				<form:input type="text" class="form-control"
				  path="zipcode"  pattern="^[1-9][0-9]{5}$"  ></form:input>
			  </div>
			</div>
			<input type="hidden" name="_flowExecutionKey" />
			<div class="form-actions">
			  <button type="Submit" class="btn btn-lg btn-warning" value="save">Next</button>
			  <button href="${flowExecutionUrl}&_eventId=cancel" class="btn btn-lg btn-danger" name="_eventId_cancel" type="button">Cancel</button>
			</div>
        </form:form>
    </div>
</body>
</html>