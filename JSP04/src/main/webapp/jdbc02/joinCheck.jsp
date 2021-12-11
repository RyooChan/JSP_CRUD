<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
		private String id, pw, nickName, email;
	
		private Connection conn;
		private Statement stmt;
				
	%>
	
	<%
	
		request.setCharacterEncoding("UTF-8");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		nickName = request.getParameter("nickName");
		email = request.getParameter("email");
		
		
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "C##JSPUSER";
		String upw = "jsp123";
		
		
		String query = "insert into member values('"+id+"', '"+pw+"', '"+nickName+"', '"+email+"')";
		
		try{
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			int i = stmt.executeUpdate(query);
			
			if(i>=1){
				System.out.println("insert성공");
				response.sendRedirect("joinResult.jsp");
			}else{
				System.out.println("insert실패");
				response.sendRedirect("memberJoinForm.jsp");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
				
			}catch(Exception e2){}
			
		}
	
	%>

</body>
</html>