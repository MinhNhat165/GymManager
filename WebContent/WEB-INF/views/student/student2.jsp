<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Spring MVC - Databinding</title>
	<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
	<h3>SINH VIÊN PTITHCM</h3> 
 	<form:form action="student/update.htm" modelAttribute="student"> 
 		<div>Họ và tên</div> 
 			<form:input path="name"/> 
 		<div>Điểm</div>
 			<form:input path="mark"/> 
 		<div>Chuyên ngành</div>
 		  <form:select path="major" class="form-control" id="exampleFormControlInput1" items="${majors }" 
 		  itemLabel="Name" itemValue="id"/>
 		  
 		  <%-- <div>Chuyên ngành</div>
		<form:radiobuttons path="major" items="${majors}"/> --%>
 		  
 <div> 
 <button>Cập nhật</button> 
 </div> 
 </form:form>
</body>
</html>