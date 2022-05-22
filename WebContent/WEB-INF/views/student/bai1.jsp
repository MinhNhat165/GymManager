<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Spring MVC</title>
<base href="${pageContext.servletContext.contextPath}/">
<style>
div {
	display: inline-block;
	text-align: center, margin: 5px;
	padding: 5px;
	border: 1px dotted orangered;
	border-radius: 5px;
}
</style>
</head>
<body>

	<div>
	
		<img src="${applicationScope.photo}" >
		 <br>
		  <strong>${applicationScope.name}</strong> 
		  <em>${applicationScope.salary*applicationScope.level}
		</em>
	</div>
	<div>
		<img src="${sessionScope.photo}"> <br> 
		<strong>${sessionScope.name}</strong>
     <em>${sessionScope.salary*sessionScope.level}</em>
	</div>
	<div>
		<img src="${requestScope.photo}"> <br> <strong> ${requestScope.name}</strong>
		 <em>${requestScope.salary*requestScope.level}</em>
	</div>
</body>
</html>