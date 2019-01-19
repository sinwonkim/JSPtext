<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
	String str1= "JAVA의 jstl";
	String str2=null;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="str9" value="스트링9"/>
<c:out value="<%=str1 %>"></c:out> 
<c:out value="${str9 }"></c:out>

</body>
</html>