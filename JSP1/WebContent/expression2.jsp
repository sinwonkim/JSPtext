<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	java.util.Date date = new java.util.Date();
	int hour = date.getHours();
	int one = 10;
	int two = 12;
%>
<%!
	public int operation(int i, int j){
	
	return i>j ? i :j;
}
%>
지금은 오전일까요 오후 일까요? <%=(hour > 12 )? "오후" : "오전" %><P>
one 과 two중 둘 중에 큰 숫자는 ? <%= operation(one,two) %>
</body>
</html>