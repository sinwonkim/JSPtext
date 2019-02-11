<%@page import="java.util.ArrayList"%>
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
	ArrayList<String> List = new ArrayList<String>(); // 문자열 저장시키는 ArrayList 객체를 생성함 
	String nameArr[] = {"simba","rorod","tina"}; // 문자열 배열을 선언
	pageContext.setAttribute("simba", nameArr);
	
%>

${simba[0]} 
</body>
</html>