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
		ID, PW를 받은 다음에
		아이디가 abcd
		비밀번호 1234
		
		맞으면
		session객체에 ID로 세션 저장하고
		sendRedirect로 session_loginOK.jsp로 보내기
		
		틀리면
		session_login.html로 보내기
		
	 --%>
	 
	<%!
		String ID;
		String PW;
	%>

	<%
		request.setCharacterEncoding("UTF-8");
		ID = request.getParameter("ID");
		PW = request.getParameter("PW");
		
		if("abcd".equals(ID) && "1234".equals(PW)){
			session.setAttribute("ID", ID);
			response.sendRedirect("session_loginOK.jsp");
		}else 
			response.sendRedirect("session_login.html");
		
	%>

</body>
</html>