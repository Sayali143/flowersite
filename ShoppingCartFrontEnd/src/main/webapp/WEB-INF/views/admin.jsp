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
	
	<c:if test="${isAdmin}">
		<jsp:include page="AdminHomePage.jsp" />
	</c:if>
	
	<c:if test="${UserClickedCATEGORY}">
		<jsp:include page="category.jsp" />
	</c:if>

 	<c:if test="${UserClickedViewCategoryTable}">
		<jsp:include page="categorytable.jsp" />
	</c:if>
	
	<c:if test="${ClickaddCategoryTable}">
		<jsp:include page="categorytable.jsp" />
	</c:if>
	
	 <c:if test="${UserClickedEDIT}">
		 <jsp:include page="editcategory.jsp" />
	</c:if>
	
	<c:if test="${EditCategory }">
		<jsp:include page="editcategory.jsp" />
	</c:if>
	
	<c:if test="${UserClickedSUPPLIER}">
		<jsp:include page="supplier.jsp" />
	</c:if>

 	<c:if test="${UserClickedViewSupplierTable}">
		<jsp:include page="suppliertable.jsp" />
	</c:if>
	
	 <c:if test="${UserclickedEDIT}">
		 <jsp:include page="editsupplier.jsp" />
	</c:if>
	
	<c:if test="${EditSupplier }">
		<jsp:include page="editsupplier.jsp" />
	</c:if>
	
	<c:if test="${UserClickedPRODUCT}">
	<jsp:include page="product.jsp" />
	</c:if>
	
	<c:if test="${UserClickedViewProductTable}">
	<jsp:include page="producttable.jsp" />
	</c:if>
	
	<c:if test="${ShowProductTable}">
	<jsp:include page="producttable.jsp" />
	</c:if>
	
	<c:if test="${UserClickedProduct}">
	<jsp:include page="product.jsp" />
	</c:if>
	
	<c:if test="${UserClickedPRODUCTEDIT}">
	<jsp:include page="editproduct.jsp" />
	</c:if>
	
	<c:if test="${EditProduct}">
	<jsp:include page="editproduct.jsp" />
</c:if>
	
	
</body>
</html>