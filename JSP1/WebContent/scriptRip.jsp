<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- <%! %>전역변수   <%%> 지역변수 -->
<%!   
	String declaration = "Declaration";
%>
<%!
	public String decMethod(){
		return declaration;	
}
%>
<%
	String scriptlet = "scriptlet";
	String comment = "comment";
	out.println("내장 객체를 이용한 출력 : " + declaration);
%>

<%= declaration %> <!-- 선언문 출력 -->
<%= decMethod() %> <!-- 선언문 출력 -->


</body>
</html>