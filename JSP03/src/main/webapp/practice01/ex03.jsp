<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		 현재 페이지 7번째 11번째 방문자에게는 
		 자바스크립트 alert함수로 축하메세지 보내기   
		 선언문과 스크립트릿 사용
	--%>
	<%!
		int visiter = 1;
	%>
	<%
		if(visiter==12){
			visiter = 0;
		}else{
			visiter++;
		}
		if(visiter==7 || visiter==11){
	%>
		<script type="text/javascript">
			alert("축하합니다!");
		</script>
	<%
			out.println(visiter + "번째 방문에 감사드립니다~");
		}else{
			out.println("현재" + visiter + "번째 방문중입니다.");
		}
	%>
</body>
</html>