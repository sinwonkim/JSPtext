<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<script>


$(function(){
	$('div#start').on('click',function(){
	$('p#number').text(parseInt($('p#number').text())+0.1);

});

});
</script>
<div id="start"><a href="#">start</a></div >

<div id="number">
	<p id="number">0.1</p>
</div>
</body>
<script src="https://code.jquery.com/jquery-1.12.4.js" ></script>
</html>