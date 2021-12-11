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
		form 태그로 숫자를 입력받아 더한 결과값을 출력해주는 코드 작성
	 	선언문, 스크립트릿, 표현식 사용
	 --%>
	 <%!
	 	int sum = 0;
	 %>
	 <form action="ex04.jsp">
	 	숫자 입력 : <input type="number" name="number">
	 	<input type="submit" value="더하기"> 
	 </form>
	 
	 <%
	 	if(request.getParameter("number") != null){
	 		String strNum = request.getParameter("number");
	 		int num = Integer.parseInt(strNum);
		 	sum += num;
	 	}
	 %>
	 
	 결과 : <%= sum %>
</body>
</html>