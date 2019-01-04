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
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	//비록 요청한 값이 정수일지라도 페이지간 통신은 모든 값이 문자로 반환이 되므로 받는 부분에서 받는 값을 
	//다시 정수로 반환을 해야 함
	int number = Integer.parseInt(request.getParameter("number"));
	int count = 0;
	while(number>count){
%>
<b><%=msg %></b><br/>


<% 

	count++;
	}
%>
</body>
</html>