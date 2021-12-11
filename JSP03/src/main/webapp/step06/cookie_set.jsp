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
		Cookie cookie = new Cookie("cookieName", "cookieValue");
		// 쿠키 생성 new Cookie("쿠키이름", "쿠키값"); 둘다 String
		
		// 유효시간을 정해주지 않으면 웹 브라우저를 닫음과 동시에 사라짐.
		// 유효시간 설정하면 웹 브라우저를 닫아도 쿠키는 그 기간동안 남아있게 된다.
		cookie.setMaxAge(60 * 60); // 쿠키가 1시간동안 유지된다.
		
		response.addCookie(cookie);
		// response객체의 addCookie 메소드로 cookie 객체를 브라우저에 심는다.
		
	%>
	
	<p>쿠키가 탑재되었습니다.</p>
	
	<a href="cookie_get.jsp">쿠키 얻기</a>

</body>
</html>