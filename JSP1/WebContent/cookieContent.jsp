<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Example Cookie</h1>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(int i=0; i<cookies.length; ++i){
		if(cookies[i].getName().equals("myCookie")){
%>
		name:	<%= cookies[i].getName() %><br>
		value:	<%= cookies[i].getValue() %><br>

	
<% 			
		}
	}
}

%>

</body>
</html>