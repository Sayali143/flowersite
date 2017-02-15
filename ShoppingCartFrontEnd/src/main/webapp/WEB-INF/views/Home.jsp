<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="HomeNavBar.jsp"></jsp:include>

<c:if test="${ShowMainPage}">
	<jsp:include page="body_page.jsp"></jsp:include>
</c:if>

<%-- <jsp:include page="corousle.jsp"></jsp:include> --%>

<c:if test="${ShowHomePage}">
	<jsp:include page="login.jsp"></jsp:include>
</c:if>

<c:if test="${ShowContactPage}">
	<jsp:include page="contact_us.jsp"></jsp:include>
</c:if>

<c:if test="${!empty selectedProduct.name }">
	<%@include file="selectedproduct.jsp" %>
</c:if>

<c:if test="${ShowLoginPage}">
	<jsp:include page="login.jsp" />
</c:if>	

<c:if test="${ShowRegistrationPage}">
	<jsp:include page="registration.jsp" />
</c:if> 

<c:if test="${loggedOut}">
	<jsp:include page="logout.jsp" />
</c:if> 
 
<c:if test="${productListLoaded}">
	<jsp:include page="productdisplay.jsp"></jsp:include>
</c:if>

<c:if test="${!empty selectedProduct.product.id}">
   <jsp:include page="selectedproduct.jsp"></jsp:include>
</c:if>
		
<c:if test="${showcarttable}">
	<jsp:include page="cart.jsp" />
</c:if> 

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>