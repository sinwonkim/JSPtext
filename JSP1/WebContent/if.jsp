<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리 post 방식 일때
    request.setCharacterEncoding("UTF-8");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String msg;
%>
<%
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	
	if(color.equals("blue")){
		msg = "파란색";
	}else if(color.equals("red")){
		msg = "붉은색";
	}else if(color.equals("orage")){
		msg = "주황색";
	}else if(color.equals("green")){
		msg = "초록색";
	}else {
		color ="white";
		msg = "기타색";
	}
%>
<b><%=name%>님이 좋아하는 색깔은 <%= color %>입니다.</b>
</body>
</html>