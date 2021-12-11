<%@page import="com.jsp.dbcp.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jsp.dbcp.MemberDAO"%>
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
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberDTO> list = dao.memberList();
		
		for(int i=0; i<list.size(); i++){
			
			MemberDTO dto = list.get(i);

			String id = dto.getId();
			String pw = dto.getPw();
			String nickName = dto.getNickName();
			String email = dto.getEmail();
			
			out.println("아이디 : " + id + ", 비밀번호 : " + pw + ", 닉네임 : " + nickName + ", 이메일 : " + email + "<br>");
			
		}
	%>
	
</body>
</html>