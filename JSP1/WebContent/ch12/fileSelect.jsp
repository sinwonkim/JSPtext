<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="frmName" method="post" enctype="multipart/form-data" action="viewPage.jsp">
	user <br> <input type="text" ><br>
	title <br> <input type="text" ><br>
	file <input type="file" name="uploadFile">
	<input type="submit" value="파일 업로드">
	 
	
	</form>
</body>
</html>