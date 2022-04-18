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
	<c:url value="https://www.naver.com" var="naverUrl" scope="page"></c:url>
	
	<a href="https://www.naver.com">naver.com</a>
	
	<br />
	
	<a href="${naverUrl }">naver.com</a>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aut soluta ducimus dolor fuga alias magnam? Eaque voluptate minima labore repellat libero sit adipisci nesciunt totam ut ipsam maiores nisi.</p>
	<p>Praesentium officia voluptatem voluptas voluptatibus ipsum labore similique assumenda nisi quis ad eos nesciunt non fugit earum ducimus velit a alias dolorum dolor officiis est ullam ab quasi asperiores aliquid!</p>
	
	<a href="https://www.naver.com">네이버</a>
	
	<a href="${naverUrl }">네이버</a>
</body>
</html>