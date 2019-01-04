<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 문자배열name을 선언하고 동시에 값을 할당하였음 -->
<%!
	String name[] = {"java","JSP","Android","Struts"};
%>
<table border="1" width="200">
<% for(int i =0; i<name.length; i++){ %>
<tr><td><%=i%></td>
<td><%=name[i] %></td>
</tr>
<% }%>
</table>
</body>
</html>