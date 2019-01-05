<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name= request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>
<%=name %>의 혈액형은
<b><%=bloodType %></b>형이고<p>
:정확한 판단력을 가진 합리주의자 입니다.


</body>
</html>