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
		
		session.setAttribute("logID", strId); // logId란 이름을 가진 세션에 mistarry 라는 값이 설정된 세션을 생성함
		session.setAttribute("logPW", strPw);	// logPW라는 이름을 가진 세션에 HELLO라는 값이 설정된 세션을 생성함 
	%>
	세션을 생성하였습니다. <br>
	<a href="ViewCookieSessionInfo.jsp">세션정보를 확인하는 페이지로 이동</a>	

</body>
</html>