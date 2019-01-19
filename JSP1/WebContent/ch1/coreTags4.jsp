<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:param name="id" value="JSPStudy"/>
<c:param name="color" value="orange"/>
<c:url var="uri1" value="http://www.google.co.kr"/>
<c:param name="q" value="JSPStudy"/>
<c:param name="safe" value="off"/>
</c:url>


<a href="${uri1}">구글에서 JSPStudy 검색</a>


</body>
</html>