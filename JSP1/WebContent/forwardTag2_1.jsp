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
	String name ="JSPTStudy";
	String bloodType = request.getParameter("bloodType");
%>
<jsp:forward page='<%=bloodType+".jsp"%>'>
<jsp:param name="name" value="<%=name %>"/>
</jsp:forward>
</body>
</html>