<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="vo.Bean"/> <!-- useBean 액션태그로 ELBean 객체를 생성함 -->
<!-- 03라인에서 생성된 Bean 객체는 pageContext 저장소에 bean이라는 속성으로 저장이 된다. -->
<jsp:setProperty property="siteName" name="bean"/> <!-- setProperty  액션태그로 Bean클래스의 setter메소드를 호출함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty property="siteName" name="bean"/> <!-- Bean클래스의 getSiteName() 메소드를 호출함 -->

<!-- useBean액션태그 통해서 객체를 생성하면 자동으로 pageContext 저장소에 저장이 되므로 -- getSiteName method 호출-->  :${bean.siteName}




</body>
</html>