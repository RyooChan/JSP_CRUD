<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%!
	 	int cnt=0;
	 %>
	 <%
	 	application.setAttribute("visiter", cnt);
	 	cnt = (Integer)application.getAttribute("visiter");
	 	cnt++;
	 
	// 	int vister = (Integer)application.getAttribute("visiter");
	 	//getAttribute("이름"); 저장된 데이터를 불러올 때
	 %>
	 	<p>현재 방문자 : <%= application.getAttribute("visiter") %></p>
	 <%
	 	
	 %>

</body>
</html>

<script>
	var i =<%=cnt%>
	if(i==10 || i==20){
		alert(i + "번째 방문에 감사드림ㅎ");
	}
</script>