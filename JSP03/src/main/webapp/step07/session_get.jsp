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
	
	<%
		Object obj1 = session.getAttribute("sessionName");
		// object로 오니까 받는것도 당연히 object임~
		// 세션이름으로 value를 얻어올 수 있다.
		String sessionValue = obj1.toString();
		// 본래 Object타입이므로 cast해준다.
		
		out.println("sessionName 의 값  : " + sessionValue + "<br>");

		Object obj2 = session.getAttribute("sessionNumber");
		int sessionNumberValue = (Integer)obj2;
		
		out.println("sessionNumber의 값 : " + sessionNumberValue + "<br>");
		
		out.println("-----------------------<br>");
	
		String sName;
		String sValue;
		
		Enumeration<String> enumeration = session.getAttributeNames();
		// getAttributeNames는 모든 세션 이름을 Enumeration<String> 타입으로 준다.
		
		while(enumeration.hasMoreElements()){
			
			sName = enumeration.nextElement();
			// 다음 요소를 얻는다~

			sValue = session.getAttribute(sName).toString();
			// 얻은 세션이름으로 value를 얻는다.
			out.println("세션이름 : " + sName + "<br>");
			out.println("세션값 : " + sValue + "<br>");
		}
		
		out.println("--------------------------<br>");
		
		String sessionId = session.getId();
		// 한 브라우저당 고유한 아이디가 생성이 된다.
		// 브라우저별로 생성되어진 세션을 구분할 수 있다.
		
		out.println("세션 아이디 : " + sessionId + "<br>");
		
		int sessionInter = session.getMaxInactiveInterval();
		// 세션의 유효시간 (기본유효시간 30분)
		out.println("세션의 유효시간 : " + sessionInter + "<br>");

		out.println("--------------------------<br>");
		
		session.removeAttribute("sessionName");
		// 세션 삭제 : removeAttribute("세션이름")
		
		Enumeration<String> enumeration1 = session.getAttributeNames();
		
		while(enumeration1.hasMoreElements()){
			sName = enumeration1.nextElement();
			sValue = session.getAttribute(sName).toString();

			out.println("세션이름 : " + sName + "<br>");
			out.println("세션값 : " + sValue + "<br>");
		}
		
		out.println("--------------------------<br>");
		
		session.invalidate();
		// 세션의 모든 데이터를 삭제한다.
		
		if(request.isRequestedSessionIdValid()){
			// 유효한 세션이 있으면 true를 return하고 없으면 false를 return한다.
			out.println("유효한 세션이 있음");
		}else{
			out.println("유효한 세션이 없음");
		}
		
		
	%>
	
	
</body>
</html>