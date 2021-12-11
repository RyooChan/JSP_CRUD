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
		String nation = request.getParameter("nation");
		String coronaCheck = request.getParameter("coronaCheck");
		
		if(coronaCheck.equals("corona1")){
			out.println(name + "님 1차 예방 접종을 하셨네요!<br>");
			out.println("아쉽지만" + nation + "은 2차까지 맞으셔야 여행 가능합니다.");
			
			
		}else if(coronaCheck.equals("corona2")){
			out.println(name + "님 축하!<br>");
			out.println(nation + "에 여행 가능합니다.");
			
			out.println("<a href=\"#\">여행 예약하기</a>");
			
		}else{
			out.println("이런~아쉽지만" + nation + "여행은 다음기회에....");
		}
		
		
	%>

</body>
</html>