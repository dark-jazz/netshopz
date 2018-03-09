package com.userDao;

public class Users {
	private int userId=0;
    private String userName;
    private String passWord;
    private String tel;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Users(int userId, String userName, String passWord, String tel) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.passWord = passWord;
		this.tel = tel;
	}
	public Users() {
		super();
	}
	@Override
	public String toString() {
		return "Users [userId=" + userId + ", userName=" + userName
				+ ", passWord=" + passWord + ", tel=" + tel + "]";
	}
	
    
    
    
    
    
}
