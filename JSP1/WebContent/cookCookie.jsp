<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<%
	String cookieName = "myCookie"; // String 타입의 변수에 사용할 쿠키이름을 넣어둠 
	Cookie cookie = new Cookie(cookieName,"Apple"); // 쿠키를 생성하기 위한 명령어 cookie이름은 myCookie가 되고 ,myCookie라고 불리는 쿠키값은 Apple이 된다.
	%>
	<%=cookie.getName() %>
	<%=cookie.getValue() %>
	
	<% 	
	cookie.setMaxAge(60); //쿠키가 60초의 생성을 가지도록 쿠키 속성을 지정함
	cookie.setValue("Melone");  
	response.addCookie(cookie); // 클라이언트로 쿠키를 전송함 
	%>

<body>
<br>
쿠키쿠키 <br>
쿠키 내용은 : <a href="cookieContent.jsp">여기로</a> 
</body>
</html>