<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
request에 저장된 값을 표현식을 통해 출력 :<%=request.getAttribute("sum") %> <!-- request에 저장된 값을 표현식을 통해 출력 -->
<br>
<b>EL의 문법으로 sum값을 출력 ${requestScope.sum}</b> 
</body>
</html>