<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- core태그를 사용하기 위해서는 반드시 필요한 자원의 uri와 prefix를 taglib에 선언을 해야함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 	String str1 = "JAVA의 jstl";
	String str2 = null;
%>
<c:set var="str3" value="c set으로 선언함" scope="page"/> <!-- c:set으로 선언한거는 scope의 값에 따라 저장소에 선언이 되기 떄문에 스크립트릿에서는 바로 참조해서 사용할 수가 없다. -->
<%=str1 %>												<!-- 사용하기 위해서는 el문법을 사용하든지 아니면 getAttribute()메소드를 사용해야 한다.  -->
${str3}
</body>
</html>