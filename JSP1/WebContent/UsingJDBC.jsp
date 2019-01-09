<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch10.* "%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

String id = "",
				passwd ="",
				name = "",
				num1 = "",
				num2 ="",
				email ="",
				phone ="",
				zipcode ="",
				address = "",
				job ="";
int counter = 0;
try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myDB","root","1234"); //DriverManger 드라이버 로드하고 db연결할 수 있게 해줌
		stmt = conn.createStatement(); // sql문을 실행해 작성된 결과를 돌려줌
		rs = stmt.executeQuery("SELECT * FROM tblRegister"); // sql문에 대한 결과를 얻어냄
}
catch(SQLException ex) {System.out.println("SQLException"+ex);}
catch(Exception ex) {System.out.println("Exception:"+ex);}

%>
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
		if(rs!=null){
			
			while(rs.next()){
				id = rs.getString("id");
			passwd = rs.getString("passwd");
				
				
				
			
		
	%>
	
	<tr>
	<td><%=id %></td>
	<td><%=passwd %></td>
	<%
		counter++;
						}
					}
	%>

<br>
<br>
<%=counter %>





</tr>



</table>

























</body>
</html>