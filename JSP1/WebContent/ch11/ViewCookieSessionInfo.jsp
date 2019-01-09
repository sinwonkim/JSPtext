<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션사용예제(세션확인)</title>
</head>
<body>
<%

Enumeration en = session.getAttributeNames();

while(en.hasMoreElements()){
	String name = (String)en.nextElement(); // 모든요소 읽어옴
	String value = (String)session.getAttribute(name); //읽어온 요소를 토대로 getAttribute()메소드에 네임 넣주면 그 네임 벨류값 
	
	
	
	out.println("세션 네임  : "+name+"<br>");
	out.println("세션 벨류 : " + value+"<br>");
}
%>
-----------------------------------<br>
<%
Cookie[] cookies = request.getCookies();
if(cookies!=null){
	
	for(int i=0; i<cookies.length; ++i){
%>
	Cookie Name : <%=cookies[i].getName() %><br>
	Cookie Value : <%=cookies[i].getValue() %><br>

<% 		
	}
}
%>


</body>
</html>