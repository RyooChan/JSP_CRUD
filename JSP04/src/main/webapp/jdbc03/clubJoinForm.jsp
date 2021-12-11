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
	form 태그로 동아리 회원가입 양식 입력받기
	입력받은 후 joinCheck.jsp로 전송
		
	 --%>
	<h3>동아리 회원가입</h3>

	<form action="joinCheck.jsp" method="post" accept-charset="UTF-8">
		이름 : <input type="text" name="name" size="10"><br>
		나이 : <input type="number" name="age" size="10"><br>
		전화번호 : <input type="text" name="phone" size="15"><br>
		이메일 : <input type="text" name="email" size="20"><br>
		<input type="submit" value="회원가입">
		<input type="reset" value="취소">
	</form>
	
</body>
</html>