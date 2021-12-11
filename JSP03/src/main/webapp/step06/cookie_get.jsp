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
		Cookie[] cookies = request.getCookies();
		// 쿠키를 배열로 받는다.
		
		for(int i=0; i<cookies.length; i++){
			
			String str = cookies[i].getName();
			// getName()메소드를 호출해서 쿠키 이름을 얻는다.
			
			if(str.equals("cookieName")){
				out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br>");
				out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br>");
			}
			
		}
		
	%>
	
	<a href="cookie_delete.jsp">쿠키 삭제</a>


</body>
</html>