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
		application객체는 JSP의 기본객체이다. 즉 JSP페이지에서 따로 선언하지 않아도 사용 가능하다.
		자신이 속한 웹어플리케이션 범위안에 모든 JSP범위에서 공유된다.
	 --%>
	 
	 <form action="application.jsp" method="post">
	 	<input type="text" name="text" size="10">
	 	<input type="submit" value="어플리케이션에 저장">
	 </form>
	 
	 <%
	 	if(request.getMethod().equals("POST")){ // 넘어오는 데이터가 post방식인 경우
	 		String text = request.getParameter("text");
	 		application.setAttribute("formText", text);
	 		// setAttribute("저장할 이름", 저장할 데이터);
	 		// 저장할 데이터는 object(모든 객체)
	 		
	 	}
	 
	 	String formText = (String)application.getAttribute("formText");
	 	//getAttribute("이름"); 저장된 데이터를 불러올 때
	 	
	 	if(formText == null || formText == ""){
	 %>
	 		<p>현재 저장된 데이터는 없음</p>
	 <%
	 	}else{
	 %>
	 		<p>현재 저장된 데이터가 있음ㄷㄷ : <%= application.getAttribute("formText") %></p>
	 <%
	 	}
	 %>

</body>
</html>