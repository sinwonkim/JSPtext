<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	String study[] = {"java","jsp","spring","oasis"};
	pageContext.setAttribute("study", study);
%>
	${header.host}<br>
	${header["user-agent"]}
	${header["Accept-Language"] }
	${header.Server }<br>
	study 배열 :   ${study[0]}${study[1]}<br>
	<a href="empty.jsp?">aa</a>
</body>
</html>	