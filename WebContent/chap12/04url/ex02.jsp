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

	<a href="ex01.jsp">ex01 (상대경로)</a>
	
	<br />
	
	<a href="${pageContext.request.contextPath }/chap12/04url/ex01.jsp">ex01 (절대경로)</a>
	
	<br />
	
	<%-- 상대 경로 --%>
	<c:url value="ex01.jsp" var="ex01RelUrl"></c:url>
	
	<a href="${ex01RelUrl }">ex01 (상대경로 c:url 사용)</a>

</body>
</html>