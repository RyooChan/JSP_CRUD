package com.jsp.dbcp;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsp.club.ClubMemberDTO;

public class MemberDAO {

	private DataSource dataSource;
	// DataSource 객체는 Connection Pool을 관리하는 객체
	
	public MemberDAO() {
		
		try {
			
			Context context = new InitialContext();
			// context객체는 JNDI서비스를 제공하는 객체를 생성한다.
			// JNDI는 Java Naming & Directory Interface의 약자로 "이름"을 가지고 데이터베이스의 정보(객체)를 얻을 수 있는 API이다.
			// 리소스가 로컬에 있을 경우에는 InitialContext객체를 생성하는 것만으로 JNDI를 사용할 수 있다.
			
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			// java:comp/env는 톰캣에서 리소스를 관리하는 가상의 디렉터리 주소
			// jdbc/oracle은 context.xml에 등록한 자원의 이름
			// context객체는(JNDI서비스는) lookup메소드의 매개변수를 "이름"으로 참고하여 해당하는 자원의 "객체"를 반환해준다.
			// 이 객체는 Object타입을 반환하기 때문에 Cast해주어야 한다.
			// DataSource타입으로 캐스팅하면 된다.
			// 정리한번 해보자
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MemberDTO> memberList(){
		ArrayList<MemberDTO> list = new ArrayList<>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from member");
			
			// 여기서부터 작성해 주세요.
			
			while(rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String nickName = rs.getString("nickName");
				String email = rs.getString("email");
				
				MemberDTO dto = new MemberDTO(id, pw, nickName, email);
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
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
