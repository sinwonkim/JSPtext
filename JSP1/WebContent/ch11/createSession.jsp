<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션사용예제(세션생성)</title>
</head>
<body>
	<%
		String strId = "mistarry";
		String strPw = "HELLO";
		
		session.setAttribute("logID", strId);
		session.setAttribute("logPW", strPw);	
	%>
	세션을 생성하였습니다. <br>
	<a href="ViewSessionInfo.jsp">세션정보를 확인하는 페이지로 이동</a>	

</body>
</html>