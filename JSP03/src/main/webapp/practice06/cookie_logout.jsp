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
		쿠키를 언은다음 쿠키값이 abcd인 쿠키 삭제하기
		삭제 후 sendRedirect 사용해서 cookie_test.jsp로 보내기
	 --%>
	 
	 
	<%
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length; i++){
			String str = cookies[i].getName();
			String ID = cookies[i].getValue();
			if("abcd".equals(ID)){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
		response.sendRedirect("cookie_login.html");
	
	%>

</body>
</html>