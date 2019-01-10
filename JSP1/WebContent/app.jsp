<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch10.RegisterBean" %>
<%@ page import="ch10.RegisterMgr" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP에서 데이터베이스 연동</title>
</head>
<body>
<h2>JSP 스크립트릿에서 데이터베이스 연동예제 입니다.</h2>
<br>
<br>
<table border="#0000ff" border="1">
	<tr>
		<td>ID</td>
		<td>PASSWD</td>
		<td>NAME</td>
		<td>NUM1</td>
		<td>NUM2</td>
		<td>EMAIL</td>
		<td>PHONE</td>
		<td>ZIPCODE</td>
		<td>JOB</td>
	</tr>
	<%
		RegisterMgr DAO = new RegisterMgr(); // DAO로 데이터베이스 접근하기위해 
		ArrayList<RegisterBean> list = DAO.getMemberList();
		for(int i = 0; i < list.size(); i++){
			
		
	
	%>
	<tr>
		<td><%=list.get(i).getId() %></td>
		<td><%=list.get(i).getPasswd() %></td>
	</tr>

	<%
		}
	%>

</table>

























</body>
</html>