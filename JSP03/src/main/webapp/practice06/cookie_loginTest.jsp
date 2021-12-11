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
		String ID;
		String PW;
	%>

	<%
		request.setCharacterEncoding("UTF-8");
		ID = request.getParameter("ID");
		PW = request.getParameter("PW");

		if("abcd".equals(ID) && "1234".equals(PW)){
			Cookie cookie = new Cookie("ID", ID);
			cookie.setMaxAge(60 * 60); 
			response.addCookie(cookie);
			response.sendRedirect("cookie_loginOK.jsp");
		}else response.sendRedirect("cookie_login.html");
	
	%>
	<%-- 
		form태그에서 전송받은 아이디와 비밀번호가
		아이디 : abcd이고, 비밀번호 : 1234와 일치한다면
		받은 아이디로 쿠키 생성하기.
		이후 웹 브라우저에 쿠키 탑재하기.
		sendRedirect로 cookie_loginOK.jsp로 보내기
		
		만약에 일치하지 않으면 
		sendRedirect로 cookie_loginin.html로 보내기
	 --%>
	 

</body>
</html>