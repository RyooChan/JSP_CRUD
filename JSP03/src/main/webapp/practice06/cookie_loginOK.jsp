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
			String ID = cookies[i].getValue();
			if("abcd".equals(ID)){
				out.println(ID + "님 안녕하세요~");
			}
		}
	
	%>
	<a href="cookie_logout.jsp">페이지 이동</a>
	<%--
		쿠키 이름을 배열로 얻은 후에 반복문을 통해 쿠키 값을 얻는다.
		쿠키값이 abcd와 일치한다면 브라우저에 abcd님 안녕하세요 출력하기
	 --%>
	 
	 <%--
	 	a태그로 cookie_logout.jsp 페이지 이동
	  --%>

</body>
</html>