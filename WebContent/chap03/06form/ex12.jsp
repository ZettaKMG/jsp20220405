<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String op = request.getParameter("operator");
String a = request.getParameter("num1");
String b = request.getParameter("num2");

double num1 = Double.parseDouble(a);
double num2 = Double.parseDouble(b);

double result = 0;

String message = "";
switch (op) {
case "add" :
	result = num1 + num2;
	message = num1 + " + " + num2 + " = " + result;
	break;
case "substract" :
	result = num1 - num2;
	message = num1 + " - " + num2 + " = " + result;
	break;
case "multiply" :
	result = num1 * num2;
	message = num1 + " * " + num2 + " = " + result;
	break;
case "divide" :
	result = num1 / num2;
	message = num1 + " / " + num2 + " = " + result;
	break;
case "SUM" :
	int x = (int) num1;
	int y = (int) num2;
	
	int sum = 0;
	for (int i = x; i <= y; i++) {
		sum += i;
	}
	
	message = x + " ~ " + y + "의 정수 합은 " + sum;
	break;	
default :

}

%>

<%--
<h1><%= a %></h1>
<h1><%= op %></h1>
<h1><%= b %></h1>
--%>

<h1><%= message %></h1>

<%-- 
String num1Str = request.getParameter("num1");
String num2Str = request.getParameter("num2");

if (num1Str == null || num2Str == null) {
%>
	<h2>num1, num2 값을 입력해주십시오.</h2>
<%
} else {
	int num1 = Integer.parseInt(num1Str);
	int num2 = Integer.parseInt(num2Str);	
%>
	<h2></h2>
<%
}
--%>

</body>
</html>