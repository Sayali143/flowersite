<html>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Method</title>
 <link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>

</head>

<body>
  <div class="container" style="margin-bottom: 19px">
    <center><h1>Payment Method!</h1></center>
	<br>
      <div class="row">
        <form:form role="form" action="${flowExecutionUrl}&_eventId=submitPaymentMethod"  commandName="paymentMethod">
			<div class="col-sm-3">
			</div>
			<div class="col-sm-6 well">
				<div class="radio">
				  <label><input type ="radio" name="paymentMethod" value="Net Banking">Net banking</label>
				</div>
				<div class="radio">
				  <label><input type="radio" name="paymentMethod" value="cash on delivery">COD</label>
				</div>
				<div class="radio">
				  <label><input type="radio" name="paymentMethod" value="Debit card">Debit card</label>
				</div>
				<div class="radio">
				  <label><input type="radio" name="paymentMethod" value="Credit card">Credit card</label>
				</div><br>
				<div class="form-group">
					<input type="submit" name="_eventID_submitPaymentMethod" class="btn btn-md btn-success" value="Save">
						<a href="${flowExecutionUrl}&_eventId=cancel" type="button" class="btn btn-md btn-danger">Cancel</a>
				</div>
			</div>
			<div class="col-sm-3">
			</div>
        </form:form>
      </div>
  </div>
</body>

</html>