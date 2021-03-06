<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
	<h1>구구단 2단 ~ 9단</h1>
	<c:forEach begin="2" end="9" var="i">
		<h3>${i }단</h3>
		<c:forEach begin="1" end="9" var="j">
			<p>${i } x ${j } = ${i * j }</p>
		</c:forEach>	
	</c:forEach>
	
	<h1>구구단 9단 ~ 2단 출력</h1>
		<c:forEach begin="1" end="8" var="i">
		<h3>${10-i }단</h3>
		<c:forEach begin="1" end="9" var="j">
			<p>${10-i } x ${j } = ${(10-i) * j }</p>
		</c:forEach>	
	</c:forEach>
</body>
</html>