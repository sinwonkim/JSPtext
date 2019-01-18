<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
 
 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" 	>
<title>Insert title here</title>
</head>
<body>
<form action="paramValues2.jsp">
name : <input type="text" name="name"><br>
hobby :<input type="checkbox" name="hobby" value="독서"> <br>
 <input type="checkbox" name="hobby" value="게임">
<input type="checkbox" name="hobby" value="만화">
 <input type="checkbox" name="hobby" value="잠자기">
 <input type="checkbox" name="hobby" value="수영">
<input type="submit" value="submit">
</form>
</body>
</html>