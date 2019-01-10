<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch8.testTable" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = null; // 특정 데이터베이스와의 연결을 말함 
Statement stmt = null;  // SQL문을 실행해 작성된 결과를 돌려줌
ResultSet rs = null; // SQL문에 대한 결과를 얻어냄

%>
</body>
</html>