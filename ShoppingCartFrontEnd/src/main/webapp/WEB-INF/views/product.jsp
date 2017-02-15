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
</head>
<body>

<div class="container" >
  <h1>
  	<center>Add Product</center>
  </h1>
  <div class="col-lg-12">
    <div class="row">
    <form  action="addproduct" method="post" enctype="multipart/form-data" >
          <center><h2>Product Details</h2></center>
          <div class="row">
	          	<div class="col-sm-2">
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>ID</label>
					    <input type="text" class="form-control" id="id" name="id" placeholder="Enter id here" required>
					 </div>
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>Name</label>
					    <input type="text" class="form-control" id="name" name="name" placeholder="Enter name here.." required>
					 </div>
	          	</div>
	          	<div class="col-sm-2">
	          	</div>
            </div>
            
            <div class="row">
	          	<div class="col-sm-2">
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>Description</label>
					    <input type="text" class="form-control" id="description" name="description" placeholder="Enter description here.." required>
					 </div>
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>Price</label>
					    <input type="text" class="form-control" id="price" name="price" placeholder="Enter price here" required>
					 </div>
	          	</div>
	          	<div class="col-sm-2">
	          	</div>
            </div>
            
            <div class="row">
	          	<div class="col-sm-2">
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>Category name</label>
					     <div class="form-group">
							  <select class="form-control" name="category_id" id="category_id" >
							    <c:forEach var="list" items="${categoryList}">
							    	<option>${list.id}</option>
							    </c:forEach>
							  </select>
						</div>
					 </div>
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>Supplier name</label>
					    <div class="form-group">
							  <select class="form-control" name="supplier_id" id="supplier_id" >
							    <c:forEach var="list" items="${supplierList}">
							    	<option>${list.id}</option>
							    </c:forEach>
							  </select>
						</div>
					 </div>
	          	</div>
	          	<div class="col-sm-2">
	          	</div>
            </div>
            
            <div class="row">
	          	<div class="col-sm-2">
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>Image</label>
					    <input type="file"  name="image"  path="image" ></input>
					 </div>
	          	</div>
	          	<div class="col-sm-2">
	          	</div>
            </div>
            
            <div class="row">
            	<div class="col-sm-4">
            	</div>
            	<div class="col-sm-6">
            		<div class="form-actions pull-right">
		              <button type="submit" class="btn  btn-lg btn-success ">Add Product</button>
		            </div>
            	</div>
            	<div class="col-sm-2">
            	</div>
            </div>
    </form>
	<div class="row">
      	<div class="col-sm-4">
      	</div>
      	<div class="col-sm-6">
      		<div class="form-actions pull-right" style="padding-top:15px;">
          		<a href="producttable" class="btn btn-warning btn-lg" role="button">View Product</a>
        	</div>
      	</div>
      	<div class="col-sm-2">
      	</div>
      </div>
      
    </div>
  </div>
</div>
</body>
</html>