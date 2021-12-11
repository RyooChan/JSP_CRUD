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
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String food = request.getParameter("food");
		String foodName = null;
		
		if("jajang".equals(food)){
			foodName = "짜장면";
		}else if("jjamppong".equals(food)){
			foodName = "짬뽕";
		}
	%>
	
	<jsp:forward page="food.jsp">
		<jsp:param value="<%= name %>" name="userName"/>
		<jsp:param value="<%= foodName %>" name="foodName"/>
	</jsp:forward>

</body>
</html>