package com.hotelManageSystem.po;

public class User {
	private int userId;
	private String userName;
	private int userLevel;
	private String phoneNumber;
	private String passWord;
	private String email;
	private int score;
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", userLevel=" + userLevel + ", phoneNumber=" + phoneNumber
				+ ", passWord=" + passWord + ", email=" + email + ", score="
				+ score + "]";
	}
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
	public int getUserLevel() {
		return userLevel;
	}
	public void setUserLevel(int userLevel) {
		this.userLevel = userLevel;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
}
