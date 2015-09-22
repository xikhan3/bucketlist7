package com.controller.command;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class UpdateUsersCommand {

	private String user_id;
	private String user_password;
	private String user_name;
	private String user_email;
	private String user_image;
	MultipartFile new_user_image;
	private Date user_regdate;
	private boolean admin_check;
	
	public UpdateUsersCommand() {
	}

	public UpdateUsersCommand(String user_id, String user_password,
			String user_name, String user_email, String user_image,
			MultipartFile new_user_image, Date user_regdate, boolean admin_check) {
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_email = user_email;
		this.user_image = user_image;
		this.new_user_image = new_user_image;
		this.user_regdate = user_regdate;
		this.admin_check = admin_check;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_image() {
		return user_image;
	}

	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}

	public MultipartFile getNew_user_image() {
		return new_user_image;
	}

	public void setNew_user_image(MultipartFile new_user_image) {
		this.new_user_image = new_user_image;
	}

	public Date getUser_regdate() {
		return user_regdate;
	}

	public void setUser_regdate(Date user_regdate) {
		this.user_regdate = user_regdate;
	}

	public boolean isAdmin_check() {
		return admin_check;
	}

	public void setAdmin_check(boolean admin_check) {
		this.admin_check = admin_check;
	}

	@Override
	public String toString() {
		return "UpdateUsersCommand [user_id=" + user_id + ", user_password="
				+ user_password + ", user_name=" + user_name + ", user_email="
				+ user_email + ", user_image=" + user_image
				+ ", new_user_image=" + new_user_image + ", user_regdate="
				+ user_regdate + ", admin_check=" + admin_check + "]";
	}
	
	
	
}
