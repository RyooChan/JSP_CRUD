package com.jsp.dbcp;

public class MemberDTO {
	private String id;
	private String pw;
	private String nickName;
	private String email;
	
	public MemberDTO() {}

	public MemberDTO(String id, String pw, String nickName, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.nickName = nickName;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
