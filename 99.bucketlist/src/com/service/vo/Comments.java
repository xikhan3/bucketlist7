package com.service.vo;

import java.util.Date;

public class Comments {
	private int comments_id;
	private int contents_id;
	private String user_id;
	private String comments_content;
	private Date comments_regdate;
	private String comments_image;
	
	public Comments() {
		super();
	}

	public Comments(int comments_id, int contents_id, String user_id,
			String comments_content, Date comments_regdate,
			String comments_image) {
		super();
		this.comments_id = comments_id;
		this.contents_id = contents_id;
		this.user_id = user_id;
		this.comments_content = comments_content;
		this.comments_regdate = comments_regdate;
		this.comments_image = comments_image;
	}

	public int getComments_id() {
		return comments_id;
	}

	public void setComments_id(int comments_id) {
		this.comments_id = comments_id;
	}

	public int getContents_id() {
		return contents_id;
	}

	public void setContents_id(int contents_id) {
		this.contents_id = contents_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getComments_content() {
		return comments_content;
	}

	public void setComments_content(String comments_content) {
		this.comments_content = comments_content;
	}

	public Date getComments_regdate() {
		return comments_regdate;
	}

	public void setComments_regdate(Date comments_regdate) {
		this.comments_regdate = comments_regdate;
	}

	public String getComments_image() {
		return comments_image;
	}

	public void setComments_image(String comments_image) {
		this.comments_image = comments_image;
	}

	@Override
	public String toString() {
		return "Comments [comments_id=" + comments_id + ", contents_id="
				+ contents_id + ", user_id=" + user_id + ", comments_content="
				+ comments_content + ", comments_regdate=" + comments_regdate
				+ ", comments_image=" + comments_image + "]";
	}
	
	
}
