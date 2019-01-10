<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String getParam(HttpServletRequest request, String paramName){
		if(request.getParameter(paramName)!=null){
			return request.getParameter(paramName);
		}else{
			return "";
		}
}
%>
<%
request.setCharacterEncoding("UTF-8");
int filecounter = 0;
if(request.getParameter("addcnt")!=null){
	filecounter = Integer.parseInt(request.getParameter("addcnt"));
}
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function inputValue(forml,param,form2,idx){
var paramValue = forml.elemeents[idx].value;
form2.elements[idx].value = paramValue;
return;
}
function addFile(formName){
if(forName.addcnt.value==""){
		alert("입력할 파일 개수를 입력하고 확인버튼을 누러주세요");
		formName.addcnt.focus();
		return;
}	
formName.submit();
}

function elementCheck(formName){
	paramIndex = 1;
	for(idx = 0; idx < forName.elements.length; idx++){
		if(forName.elements[idx].type == "file"){
			if(forName.elements[idx].value==""){
				var message = paramIndex+"번째 파일정보가 누락되었습니다.\업로드할 파일을 선택해 주세요";
				
				alert('message');
					formName.elements[idx].focus();
					return;
			}
			paramIndex++;
		}
	}
	formName.action = "fileInfoView.jsp";
	formName.submit();
}
</script>




<meta charset="UTF-8">
<title>File select Page</title>
</head>
<body>

</body>
</html>