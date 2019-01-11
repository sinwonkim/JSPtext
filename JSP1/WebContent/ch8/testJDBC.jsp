<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="ch8.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); //JDBC드라이버의 인스턴스 (객체)생성
Connection conn = null; // 특정 데이터베이스와의 연결을 말함 
Statement stmt = null;  // SQL문을 실행해 작성된 결과를 돌려줌
ResultSet rs = null; // SQL문에 대한 결과를 얻어냄

String testId = "",
				testPw = "";

int counter = 0;
try {
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myDB","root","1234");
	stmt = conn.createStatement();
	rs = stmt.executeQuery("SELECT * FROM testTable");
	
}
catch(SQLException ex) {System.out.println("SQLException"+ex);}
catch(Exception ex) {System.out.println("Exception:"+ex);}

%>
<table border="#0000ff" border="1">
	<tr>
		<td>아이디</td>
		<td>비번</td>
	</tr> 
	<%
		if(rs != null){
			while(rs.next()){
				testId = rs.getString("testId");
				testPw = rs.getString("testPw");
		%>	
	
	<tr>
		<td><%=testId %></td>
		<td><%=testPw %></td>
	</tr>
	
	<%
			} //endWhile
		} // end if 
	 %>

</table>
</body>
</html>