package com.damino.web.user.userinfo;

public class UserInfoVO {
	private String username;
	private String userid;
	private String userpasswd;
	private String birthday;
	private String sex;
	private String cyear;
	private String phone;
	private String email;
	private String receive_sms;
	private String receive_email;
	private String receive_dm;
	private String userlevel;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpasswd() {
		return userpasswd;
	}
	public void setUserpasswd(String userpasswd) {
		this.userpasswd = userpasswd;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCyear() {
		return cyear;
	}
	public void setCyear(String cyear) {
		this.cyear = cyear;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getReceive_sms() {
		return receive_sms;
	}
	public void setReceive_sms(String receive_sms) {
		this.receive_sms = receive_sms;
	}
	public String getReceive_email() {
		return receive_email;
	}
	public void setReceive_email(String receive_email) {
		this.receive_email = receive_email;
	}
	public String getReceive_dm() {
		return receive_dm;
	}
	public void setReceive_dm(String receive_dm) {
		this.receive_dm = receive_dm;
	}
	public String getUserlevel() {
		return userlevel;
	}
	public void setUserlevel(String userlevel) {
		this.userlevel = userlevel;
	}
	@Override
	public String toString() {
		return "UserInfoVO [username=" + username + ", userid=" + userid + ", userpasswd=" + userpasswd + ", birthday="
				+ birthday + ", sex=" + sex + ", cyear=" + cyear + ", phone=" + phone + ", email=" + email
				+ ", receive_sms=" + receive_sms + ", receive_email=" + receive_email + ", receive_dm=" + receive_dm
				+ ", userlevel=" + userlevel + "]";
	}
	
}
