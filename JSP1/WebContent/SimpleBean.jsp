<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:useBean id="test" class="sin1.SimpleBean" scope="page"></jsp:useBean>
 <jsp:setProperty name="test" property="message" value="빈 사용해보기"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 간단한 빈 프로그래밍 </h1>
<br>
Messages : <jsp:getProperty property="message" name="test"/>
</body>
</html>