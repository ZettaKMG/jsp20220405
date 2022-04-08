<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>  
<% request.setCharacterEncoding("utf-8"); %>  

<%
String attr1 = "sunja";
List<String> attr2 = new ArrayList<>();
attr2.add("doctor");
attr2.add("hello");
attr2.add("hi");

request.setAttribute("job", attr1);
request.setAttribute("job", "strange");
request.setAttribute("names", attr2);
%>

<jsp:forward page="ex06to.jsp" />