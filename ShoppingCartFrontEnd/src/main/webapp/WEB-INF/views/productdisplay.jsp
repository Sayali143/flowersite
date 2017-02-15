<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>
<style>
.product_description:hover
{
	box-shadow:5px 3px 3px 4px pink;
	
}
</style>>
</head>
<body>
<br>
<div class="container-fluid">
<div class="row">
	<c:forEach items="${productList}" var="product">
		<div class="col-sm-3">
	   		<center><img src="/ShoppingCartFrontEnd/resources/img/${product.id}.jpg" height="220" width="220" class="product_description"></center>	   	
	       		<center><h5 class="product_description">${product.name}</h5></center> 
	       		<center><h5 class="product_description">price ${product.price}</h5></center>
	       		 <c:if test="${loggedOut == false}">
	       		<center><a href="<c:url value='/cart_add?productId=${product.id}'/>" class="btn btn-warning" role="button">Add to wishlist</a>
	       		<a href="cart_checkout" class="btn btn-danger" role="button">Check out</a></center><br>
	       		</c:if>
	       	</div>
   	</c:forEach>
</div>
</div>
</body>
</html>