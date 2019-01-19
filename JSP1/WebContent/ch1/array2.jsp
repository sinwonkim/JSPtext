<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<String> list = new ArrayList<String>();
	String nameArr[]  = {"support","mid","top","bottom"};
	for(int i = 0; i<nameArr.length; i++){
		list.add(nameArr[i]);
	}
	request.setAttribute("list", list);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${list} 
</body>
</html>