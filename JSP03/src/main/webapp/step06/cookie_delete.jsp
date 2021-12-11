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
		for(int i=0; i<cookies.length; i++){
			String str = cookies[i].getName();
			
			if(str.equals("cookieName")){
				
				cookies[i].setMaxAge(0);
				// 유효시간을 0으로 설정(지워버리는거)
				// 왜냐면 쿠키가 클라이언트에 있기 때문에, 서버에서 다시 그걸 유효기간 0초짜리로 바꾸어서 클라이언트에 심어야 하기 때문이다.
				response.addCookie(cookies[i]);
				// addCookie를 사용하여 변경된 쿠키객체 브라우저에 심기
				out.println("쿠키가 삭제되었습니다.<br>");
			}
			
		}
	%>
	
	<a href="cookie_test.jsp">쿠키 확인</a>


</body>
</html>