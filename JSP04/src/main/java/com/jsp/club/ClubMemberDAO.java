package com.jsp.club;

import java.sql.*;
import java.util.ArrayList;

public class ClubMemberDAO {

	
	private ClubMemberDAO() {}
	
	private static ClubMemberDAO instance = new ClubMemberDAO();
	
	public static ClubMemberDAO getInstance() {
		return instance;
	}
	
	// 싱글톤 : 단 하나의 객체만 생성하는 것
	// 외부에서 객체를 얻는 방법은 getInstance() 메소드를 호출하는 방법뿐
	// 메모리 낭비 방지
	
	public int insertClubMember(ClubMemberDTO dto) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;

		String driver = "oracle.jdbc.OracleDriver"; 
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "C##JSPUSER";
		String upw = "jsp123";
		
		String query = "insert into clubMember values(?, ?, ?, ?)";
				
		// preparedstatement
		// 1. Statement 클래스의 기능향상
		// 2. 코드 안정성과 가독성이 높음.
		
		try {
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2, dto.getAge());
			pstmt.setString(3, dto.getPhone());
			pstmt.setString(4, dto.getEmail());
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e2) {}
		}
		return result;
	}
	
	public ArrayList<ClubMemberDTO> memberList(){
		ArrayList<ClubMemberDTO> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		String driver = "oracle.jdbc.OracleDriver"; 
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "C##JSPUSER";
		String upw = "jsp123";
		String query = "select * from clubMember";
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				
				ClubMemberDTO dto = new ClubMemberDTO(name, age, phone, email);
				list.add(dto);
			}
			
		}catch(Exception e){
			
		}finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			}catch(Exception e2) {}
		}
		
		return list;
				
	}
	
}
