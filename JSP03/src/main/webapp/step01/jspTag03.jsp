<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 표현식(expression) --%>
	<%!
		String name = "홍길동";
		int age = 20;
		public int add(int a, int b){
			return a + b;
		}
	%>
	이름 : <%= name %><br>
	나이 : <%= age %><br>
	100+200 : <%=add(100, 200) %>
	

</body>
</html>