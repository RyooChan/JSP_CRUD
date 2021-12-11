package com.jsp.members;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.*;
import javax.sql.*;

import com.jsp.club.ClubMemberDTO;
import com.jsp.dbcp.MemberDTO;

public class MembersDAO {
	
	public static final int MEMBER_NG = 0;
	// 멤버가 존재하지 않을 때
	public static final int MEMBER_OK = 1;
	// 멤버가 존재할 때

	public static final int MEMBER_LOGIN_PASSWORD_NG = 0;
	public static final int MEMBER_LOGIN_OK = 1;
	
	public static final int MEMBER_LOGIN_IS_NOT = -1;
	// 회원이 아예 존재하지 않을 때
	
	private static MembersDAO instance = new MembersDAO();
	
	private MembersDAO() {}
	
	public static MembersDAO getInstance() {
		return instance;
	}
	
	private Connection getconnection() {
		
		Connection conn = null;
		DataSource dataSource = null;
		Context context = null;
		
		try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			conn = dataSource.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	// membersDTO 객체 사용해서 DB에 데이터 넣기
	public int insertMember(MembersDTO dto) {
		int result = 0;
		
		ArrayList<MembersDTO> list = new ArrayList<>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		String query = "insert into members values(?, ?, ?, ?, ?, ?)";
		

		try {
			
			conn = getconnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,  dto.getId());
			pstmt.setString(2,  dto.getPw());
			pstmt.setString(3,  dto.getName());
			pstmt.setString(4,  dto.getEmail());
			pstmt.setTimestamp(5,  dto.getRegDate());
			pstmt.setString(6,  dto.getAddress());
			
			result = pstmt.executeUpdate();
			// 여기서부터 작성해 주세요.
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e2) {}
		}
		return result;
	}
	
	// members 테이블에 같은 ID가 있는지 확인하는 메소드
	public int confirm(String id) {
		int result = 0;
		
		
		
		return result;
	}
	
	// id와 pw의 매개값을 받아서 DB 연결 후 id로 pw데이터 얻은 다음에
	// id가 존재하지 않는다면 -1, 존재한다면 1, 비밀번호가 틀리다면 0 리턴하기
	public int userCheck(String id, String pw) {
		int result = 0;
		
		Connection conn = null;
		DataSource dataSource = null;
		Context context = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// 여기서부터 작성해 주세요.
		try {
			conn = dataSource.getConnection();
			String query = "select id from members where id=? and pw=?";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e2) {}
		}
		
		return result;
	}
	
	// DB에서 id로 모든 컬럼을 얻은 수에 DTO객체에 넣고 DTO객체 return하기
	public MembersDTO getMember(String id) {
		MembersDTO dto = null;
		
		Connection conn = null;
		DataSource dataSource = null;
		Context context = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// 여기서부터 작성해 주세요.
		try {
			conn = dataSource.getConnection();
			String query = "select * from members where id=?";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			
			while(rs.next()) {

				String idBack = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Timestamp regDate = rs.getTimestamp("regDate");
				String address = rs.getString("address");
				
				dto = new MembersDTO(idBack, pw, name, email, regDate, address);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e2) {}
		}
		
		return dto;
	}
	
	// DB의 update로 비밀번호, 이메일, 주소 수정하기
	public int updateMember(MembersDTO dto) {
		int result = 0;
		
		
		return result;
	}
}
