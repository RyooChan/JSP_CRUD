<%@page import="java.util.Collections"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
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
		Random ran = new Random();
		ArrayList<Integer> lottary = new ArrayList<>();
	%>
	<%
		while(lottary.size() < 6){
			int num = ran.nextInt(45)+1;
			if(!lottary.contains(num)){
				lottary.add(num);
			}
		}
	
		Collections.sort(lottary);
	%>
	<%
		for(int i : lottary){
			out.println("<b>" + i + "</b>");
			Thread.sleep(1000);
			out.flush();
		}
	%>
</body>
</html>