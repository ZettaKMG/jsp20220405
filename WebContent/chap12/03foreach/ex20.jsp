<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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