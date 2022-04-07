<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>  
<% request.setCharacterEncoding("utf-8"); %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>

<%-- include directive --%>
<%-- file 속성으로 이 위치에 포함될 파일의 경로를 작성 --%>
<%@ include file="module/header01.jsp"%>

<!-- div>(h1>lorem1^p>lorem)*3 -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit deserunt inventore hic voluptates natus pariatur quas nisi dolores soluta itaque quae in impedit maiores explicabo ratione non expedita doloremque obcaecati!</p>
	<h1>Porro.</h1>
	<p>Cumque modi ipsa explicabo animi praesentium deleniti sed et nisi recusandae atque quod molestias totam quia ratione quis nihil placeat nulla dicta aperiam fugit veritatis reprehenderit velit minus assumenda ducimus?</p>
	<h1>Tenetur!</h1>
	<p>Temporibus maxime eligendi sequi eius repellendus aperiam nisi aliquid magnam. Earum eligendi atque quo alias maxime assumenda perspiciatis libero natus voluptate nemo tempore dicta placeat a officiis cupiditate voluptatibus illum.</p>
</div>

</body>
</html>