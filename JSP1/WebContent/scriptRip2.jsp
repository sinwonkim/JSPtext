<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 스크립트릿 <% %>  --> 
<%

	float f = 2.3f;
	int i = Math.round(f);
	java.util.Date date = new java.util.Date();
%> <!-- Math클래스에 round는  클래스(static)메소드이므로 클래스 명으로 접근이 가능하고 실수 값을 반올림하여 정수 값을 반환 해주는 메소드  -->

실수 f의 반올림값은? <%=i %><p>
현재의 날짜와 시간은 ? <%=date.toString() %>


</body>
</html>