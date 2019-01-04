<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 선언문 멤버변수,메소드 선언가능 -->
<%!
	int one;
	int two = 1;
	public int plusMethod() {
		
	return one + two;
	}
	
	String msg;
	String three;
%>


one 과 tow 의 합은 ? <%=plusMethod() %><p>
String msg 의 값은 ? <%= msg %>
</body>
</html>