<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		int age;
	%>
	<%
		String strAge = request.getParameter("age");
		age = Integer.parseInt(strAge);
		
		if(age >= 20){
			response.sendRedirect("response_ok.jsp?age="+age);
		}else{
			response.sendRedirect("response_ng.jsp?age="+age);
		}
	%>

</body>
</html>