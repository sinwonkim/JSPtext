<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*,ch8.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Bean을 사용한 데이터베이스 연동</h2>
<table bordercoloer="#00000ff" border="1">
	<tr>
		<td>아이디</td>
		<td>패스워드</td>
	</tr>
<jsp:useBean id="testdao" class="ch8.testDAO"></jsp:useBean>
<% 
ArrayList<testTable> list= testdao.getTestTable();
for(int i = 0; i<list.size(); i++ ){
	testTable as = (testTable)list.get(i);
%>

<tr>	
	<td><%=as.getTestId() %></td>
	<td><%=as.getTestPw() %></td>
</tr>

<%
}
%>
</table>


</body>
</html>