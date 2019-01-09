<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,ch10.*" %>
<jsp:useBean id="regMgr" class="ch10.RegisterMgr" scope="page"></jsp:useBean> <!--빈을 생성함 tblRegister  -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>JSP데이터 베이스 연동</title>
</head>
<body>
<h2>Bean을 사용한 데이터베이스 연동 예제</h2>
<br>
<br>
<h3>회원정보</h3>
<table bordercolor="#0000ff" border="1">
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
	Vector  vecList = regMgr.getMemberList();
	int counter = vecList.size();  // 벡터의 사이즈, 즉 크기는 레코드의 개수가 됨 레코드의 개수는 tblRegister 테이블에 입력된 회원 각각에 대한 정보
	for(int i = 0; i<vecList.size(); i++){
		RegisterBean regBean = (RegisterBean)vecList.get(i);// get()메소드는 오브젝트로 반환 하기떄문에  
	
%>
<tr>
<td><%= regBean.getId() %></td>
</tr>

<%
}
	 %>
</table>


</body>
</html>