<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Category</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 </head>
<body>

<div class="container" >
  <h1>
  	<center>Add Product</center>
  </h1>
  <div class="col-lg-12">
    <div class="row">
    <form  action="addproduct" method="post" enctype="multipart/form-data">
          <center><h2>Product Details</h2></center>
          <div class="row">
	          	<div class="col-sm-2">
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>ID</label>
					    <input type="text" class="form-control" id="id" name="id" required value=${product.id}>
					 </div>
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>Name</label>
					    <input type="text" class="form-control" id="name" name="name" required value=${product.name}>
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
					    <input type="text" class="form-control" id="description" name="description" required value=${product.description}>
					 </div>
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>Price</label>
					    <input type="text" class="form-control" id="price" name="price" required value=${product.price}>
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
					    <label>Category_Id</label>
					    <input type="text" class="form-control" id="category_id" name="category_id" required value=${product.category_id}>
					 </div>
	          	</div>
	          	<div class="col-sm-4">
	          		<div class="form-group">
					    <label>Supplier_Id</label>
					    <input type="text" class="form-control" id="supplier_id" name="supplier_id" required value=${product.supplier_id}>
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
					    <input type="file"  name="image"  path="image" >
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
</html>