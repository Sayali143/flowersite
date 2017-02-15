<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="resources/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="resources/lib/js/jquery.min.js"/>"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<div class="container-fluid">
		<div id="carttable">
			<h2>Total cost : Rs ${totalAmount}</h2>
			<center><h3>Cart table</h3></center>
			<hr>
			<div class="row">
				<div class="col-sm-2">
				</div>
				<div class="col-sm-8 table-responsive">
					<table class="table table-condensed table-hover">
						<thead>
							<tr>
								<th>ID</th>
								<th>NAME</th>
								<th>PRICE</th>
								<th>DELETE</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cartlist}" var="cart">
								<tr>
		
									<td>${cart.id}</td>
									<td>${cart.productName}</td>
									<td>${cart.price}</td>
									<td><a
										href="<c:url value='/cart_delete?id=${cart.id}'/>" button
										class="btn btn-danger btn-sm">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
						</tfoot>
					</table>
				</div>
				<div class="col-sm-2">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-sm-9">
				</div>
				<div class="col-sm-2">
					<a href="cart_checkout" class="btn btn-success" role="button">checkout</a><br>
				</div>
				<div class="col-sm-1">
				</div>
			</div>
			<hr>
		</div>
	</div>
</body>
</html>