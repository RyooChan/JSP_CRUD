<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
	Connection connection;
	// Connection : DB와 연결성을 갖는 인터페이스
	Statement statement;
	// Statement : SQL 문을 실행하는 인터페이스
	ResultSet resultSet;
	// ResultSet : 조회결과 데이터를 갖는 인터페이스
	
	String driver = "oracle.jdbc.OracleDriver";
	// OracleDriver : Oracle JDBC 드라이버 클래스이다.
	// Java 응용 프로그램에서 데이터베이스에 접속하려면 드라이버를 프로그램에 등록하는 코드를 제공해야 한다.
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	// jdbc:oracle:thin -> 사용하는 jdbc드라이버가 thin 타입을 의미.
	// thin -> 순수하게 자바 클래스로 바로 DB와 연결
	// 1521 -> 오라클 DB포트명
	// xe -> DB명
	
	String uid = "C##JSPUSER";
	String upw = "jsp123";
	String query = "select * from member";
%>

<%
	try{
		Class.forName(driver);
		// Oracle드라이버 클래스를 메모리에 올린다.
		
		connection = DriverManager.getConnection(url, uid, upw);
		// DriverManager 는 Class.forName()메소드를 통해 생성된다.
		// DriverManager 클래스는 JDBC드라이버를 통해서 Connection을 만드는 역할을 한다.
		// DriverManager.getConnection()으로 Connection 객체를 생성한다. 
		
		statement = connection.createStatement();
		
		resultSet = statement.executeQuery(query);
		
		while(resultSet.next()){
			// 다음 레코드가 있는지 판단 후 없으면 false, 있으면 true
			// 이후 커서를 다음 레코드로 이동시킨다.
			
			String name = resultSet.getString("id");
			String pw = resultSet.getString("pw");
			String nickName = resultSet.getString("nickName");
			String email = resultSet.getString("email");
			
			out.println("이름은 : " + name + ", 비밀번호는 : " + pw + "닉네임은 : " + nickName + "이메일은 : "  + email + "<br>");
		}
		
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		// DB관련 처리 작업이 완료된 다음에는 사용했던 객체들을 메모리에서 해제해주어야 한다.
		// 해제하는 순서는 최근에 사용했던 객체부터 거꾸로 올라가며 해제한다.
		// resultSet -> statement -> connection
		
		try{
			
			if(resultSet != null){
				resultSet.close();
			}
			
			if(statement != null){
				statement.close();
			}
			
			if(connection != null){
				connection.close();
			}
			
		}catch(Exception e){}
		
	}
	

%>




</body>
</html>






