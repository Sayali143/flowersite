<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="<c:url value="resources/lib/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/lib/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/lib/js/jquery.min.js" />"></script>
 
	
<script>
	$(document).ready(function() {
		$('.dropdown-toggle').dropdown();
	});
</script>
</style>
</head>
<body>

<ul class=" nav nav-pills" role="tablist">
   <c:forEach items="${categoryList}" var="category">
       <li class="dropdown" ><a href="#" class ="dropdown-toggle" data-toggle="dropdown"  role="menu" >${category.name}
       <span class="caret"></span></a>
       </li>
	</c:forEach>
</ul> 

<hr style="color:red">
</body>
</html>