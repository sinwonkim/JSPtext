<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	String str1[] = {"simba","rorod","tina","poli"};
	String str2 = "JAVA,JSP; Struts,Android";
%>
<%
	pageContext.setAttribute("br", "<br/>");
	pageContext.setAttribute("cn", "\n");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="arr" value="<%= str1 %>"></c:set>
<c:forEach var="i" items="${arr}" begin="0" end="3">
	${i} ${br} 
	<hr/>
</c:forEach>
</body>
</html>