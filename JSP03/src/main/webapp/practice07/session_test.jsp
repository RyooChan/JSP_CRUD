<%@page import="java.util.Enumeration"%>
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
		세션에 있는 이름과 value모두 꺼내서 브라우저에 출력하기
		만약에 없다면 세션이 삭제되었다고 브라우저에 출력하기
	 --%>
	 <%
	 boolean check = false;
		if(request.isRequestedSessionIdValid()){
			Enumeration<String> enumeration = session.getAttributeNames();
		 	while(enumeration.hasMoreElements()){
		 		check = true;
		 		String sName = enumeration.nextElement();
		 		String sVal = session.getAttribute(sName).toString();
				out.println(sName + " : " + sVal);
		 	}
		}else{
			out.println("유효한 세션이 없음");
		}
	 	if(!check)out.println("ㄹㅇ없음");
	 %>


</body>
</html>