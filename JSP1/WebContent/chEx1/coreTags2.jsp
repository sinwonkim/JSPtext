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
<c:if test="${param.id !=null }">
	id 값이 null이 아닙니다 : ${param.id}

</c:if>
<c:if test="${param.id == null }">
	GUEST 입니다.
</c:if>
<c:choose>
<c:when test="${param.color=='Yellow'}">
when 태그는 다중조건 중에서 조건식을 표현합니다. 

	<c:set var="c" value="노란색"/>
</c:when>
<c:when test="${param.color == blue }">

	<c:set var="c" value="파란색"/>
</c:when>


<c:otherwise>
	<c:set var="c" value="블랙"/>
</c:otherwise>
</c:choose>
너가 좋아하는 색상은?<font color="${param.color}">${c }</font>
</body>
</html>