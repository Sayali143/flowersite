<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="resources/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="resources/lib/js/jquery.min.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Table</title>
</head>
<body>
<c:set var="imageFolder" value="/resources/img/" />
<div class="container"> 
<div class="col-md-6">            
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>IMAGE</th>
        <th>NAME</th>
        <th>DESCRIPTION</th>
        <th>PRICE</th>
        <th>CATEGORY_ID</th>
        <th>SUPPLIER_ID</th>
         <th>EDIT</th>
          <th>DELETE</th>
      </tr>
    </thead>
   <tbody>
   <c:forEach items="${ProductList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td style="width:171px">
            <img src="<c:url value="${imageFolder}${product.id}.jpg"/>"
			    style="width: 100px; height: 90px;" />  </td>
            <td>${product.name}</td>
            <td>${product.description}</td>
             <td>${product.price}</td>
               <td>${product.category_id}</td>
                <td>${product.supplier_id}</td>
            <td><a href="<c:url value='/manage_product_edit?id=${product.id}'/>" button class="btn btn-success btn-sm">Edit</a></td>
            <td><a href="<c:url value='/manage_product_remove?id=${product.id}'/>" button class="btn btn-danger btn-sm">Delete</a></td>
            </tr>
            </c:forEach>
            </tbody>   
  </table>
</div>

</body>
</html>