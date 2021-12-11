<%@page import="com.jsp.club.ClubMemberDTO"%>
<%@page import="com.jsp.club.ClubMemberDAO"%>
<%@page import="java.util.ArrayList"%>
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
	ClubMemberDAO의 객체를 얻고
	memberList() 메소드를 호출하여 ArrayList객체 얻기
	list에 있는 ClubMemberDTO 객체를 하나씩 반복문을 통해서 얻은 다음
	웹 브라우저에 출력하기
	 --%>
	 
	 <%
	 	ClubMemberDAO dao = ClubMemberDAO.getInstance();
	 	ArrayList<ClubMemberDTO> list = null;
	 	
	 	list = dao.memberList();
	 	
	 	out.println("<h1>동아리 회원목록</h1>");
	 	
	 	for(int i=0; i<list.size(); i++){
	 		ClubMemberDTO dto = list.get(i);
	 		out.println("이름 : " + dto.getName() + ", 나이 : " + dto.getAge() 
	 		+ "전화번호 : " + dto.getPhone() + ", 이메일 : " + dto.getEmail() + "<br>");
	 	}
	 %>

</body>
</html>