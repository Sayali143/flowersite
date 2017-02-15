<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container" >
  <h1>
  	<center>Edit category</center>
  </h1>
  <div class="col-lg-12">
    <div class="row">
    <form action="editcategory" enctype="multipart/form-data">
      <div class="col-sm-12">
      	<div class="row">
			<center><h2>Category Details</h2></center>
				<div class="col-sm-2">
				</div>
				<div class="col-sm-4 form-group">
					<h4>ID</h4>
					<input type="text" placeholder="Enter category id" id="id" class="form-control" name="id" readonly required value=${category.id}></input>
				</div>
				<div class="col-sm-4 form-group">
					<h4>Name</h4>
					<input type="text" placeholder="Enter category Name" name="name" class="form-control"  name="name" required value=${category.name}></input>
				</div>
				<div class="col-sm-2">
				</div>              
		</div> 
		<div class="row">
			<div class="col-sm-2">
			</div>
			<div class="col-sm-8 form-group">
				<h4>Description</h4>
					<textarea type="text" placeholder="Enter Description" class="form-control" name="description" required>${category.description}</textarea>
			</div>
			<div class="col-sm-2">
			</div>
		</div>         
         <div class="row">
			<div class="col-sm-3">
			</div>
			<div class="col-sm-7">
				<div class="form-actions pull-right">
					<button type="submit" class="btn  btn-lg btn-success" >Add Category</button>
				</div>
			</div>
			<div class="col-sm-2">
			</div>
		</div>
        </div>
        </form>
      </div>
     <div class="row">
		<div class="col-sm-3">
		</div>
		<div class="col-sm-7">
			<div class="form-actions pull-right" style="padding-top:10px;">
				<a href="categorytable" class="btn btn-warning btn-lg" role="button">View Category</a>
			</div>
		</div>
		<div class="col-sm-2">
		</div>
	</div>    
    </div>
  </div>

</body>
</html>