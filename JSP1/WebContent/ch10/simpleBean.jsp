<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="sbean" class="ch8.SimpleBean"></jsp:useBean>
 <jsp:setProperty property="message" name="sbean"/>
 <jsp:setProperty property="name" name="sbean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
MyName :<jsp:getProperty property="name" name="sbean"/>
Message : <jsp:getProperty property="message" name="sbean"/>
</body>
</html>