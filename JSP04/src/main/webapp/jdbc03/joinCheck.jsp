<%@page import="com.jsp.club.ClubMemberDAO"%>
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
	넘어온 데이터들을 입력받고 ClubMemberDTO를 액션태그로 객체를 생성한 후 useBean 액션태그를 사용해서
	setProperty로 DTO객체에다가 세팅해준다.
	setProperty 객체를 생성한 후 insertClubMember 메소드를 호출하여 데이터베이스에 데이터 넣기
	회원가입이 정상적으로 이루어졌다면 브라우저에 회원가입 축하메세지 출력하기
	 --%>

	<%
		request.setCharacterEncoding("UTF-8");

		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
	%>
	
	<jsp:useBean id="dto" class="com.jsp.club.ClubMemberDTO"/>
	<jsp:setProperty property="name"  name="dto" value="<%=name%>"/>
	<jsp:setProperty property="age"   name="dto" value="<%=age%>"/>
	<jsp:setProperty property="phone" name="dto" value="<%=phone%>"/>
	<jsp:setProperty property="email" name="dto" value="<%=email%>"/>
	
	<%
		ClubMemberDAO dao = ClubMemberDAO.getInstance();	// 싱글톤을 썼기 떄문에 getInstance를 호출해서 얻는 방법밖에 없다.
		int result = dao.insertClubMember(dto);
		if(result==1){
	%>
	
	<script type="text/javascript">
		alert("회원 가입이 정상적으로 완료 되었습니다.");
	</script>
	<p> 회원 가입을 축하드립니다. </p>
	<a href="clubMemberList.jsp">회원 목록 보기</a>
	
	<%
		}else{
	%>
	
	<script type="text/javascript">
		alert("회원 가입이 정상적으로 이루어지지 않았습니다.");
	</script>
	<p> 회원 가입이 정상적으로 이루어지지 않았습니다. </p>
	<a href="clubJoinForm.jsp">회원 가입하기</a>
	
	<% 
		}
	%>

</body>
</html>