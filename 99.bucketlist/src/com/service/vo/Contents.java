package com.service.vo;

import java.util.Date;

public class Contents {
	private int contents_id;
	private String user_id;
	private String category_id;
	private String contents_title;
	private String contents_image1;
	private String contents_image2;
	private String contents_image3;
	private String contents_content;
	private Date contents_goaldate;
	private String contents_loc;
	private String lat;
	private String lon;
	private Date contents_regdate;
	private char contents_private;
	private char contents_com;
	public Contents() {
		super();
	}
	public Contents(int contents_id, String user_id, String category_id,
			String contents_title, String contents_image1,
			String contents_image2, String contents_image3,
			String contents_content, Date contents_goaldate,
			String contents_loc, String lat, String lon, Date contents_regdate,
			char contents_private, char contents_com) {
		super();
		this.contents_id = contents_id;
		this.user_id = user_id;
		this.category_id = category_id;
		this.contents_title = contents_title;
		this.contents_image1 = contents_image1;
		this.contents_image2 = contents_image2;
		this.contents_image3 = contents_image3;
		this.contents_content = contents_content;
		this.contents_goaldate = contents_goaldate;
		this.contents_loc = contents_loc;
		this.lat = lat;
		this.lon = lon;
		this.contents_regdate = contents_regdate;
		this.contents_private = contents_private;
		this.contents_com = contents_com;
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
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getContents_title() {
		return contents_title;
	}
	public void setContents_title(String contents_title) {
		this.contents_title = contents_title;
	}
	public String getContents_image1() {
		return contents_image1;
	}
	public void setContents_image1(String contents_image1) {
		this.contents_image1 = contents_image1;
	}
	public String getContents_image2() {
		return contents_image2;
	}
	public void setContents_image2(String contents_image2) {
		this.contents_image2 = contents_image2;
	}
	public String getContents_image3() {
		return contents_image3;
	}
	public void setContents_image3(String contents_image3) {
		this.contents_image3 = contents_image3;
	}
	public String getContents_content() {
		return contents_content;
	}
	public void setContents_content(String contents_content) {
		this.contents_content = contents_content;
	}
	public Date getContents_goaldate() {
		return contents_goaldate;
	}
	public void setContents_goaldate(Date contents_goaldate) {
		this.contents_goaldate = contents_goaldate;
	}
	public String getContents_loc() {
		return contents_loc;
	}
	public void setContents_loc(String contents_loc) {
		this.contents_loc = contents_loc;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLon() {
		return lon;
	}
	public void setLon(String lon) {
		this.lon = lon;
	}
	public Date getContents_regdate() {
		return contents_regdate;
	}
	public void setContents_regdate(Date contents_regdate) {
		this.contents_regdate = contents_regdate;
	}
	public char getContents_private() {
		return contents_private;
	}
	public void setContents_private(char contents_private) {
		this.contents_private = contents_private;
	}
	public char getContents_com() {
		return contents_com;
	}
	public void setContents_com(char contents_com) {
		this.contents_com = contents_com;
	}
	@Override
	public String toString() {
		return "Contents [contents_id=" + contents_id + ", user_id=" + user_id
				+ ", category_id=" + category_id + ", contents_title=" + contents_title
				+ ", contents_image1=" + contents_image1 + ", contents_image2="
				+ contents_image2 + ", contents_image3=" + contents_image3
				+ ", contents_content=" + contents_content
				+ ", contents_goaldate=" + contents_goaldate
				+ ", contents_loc=" + contents_loc + ", lat=" + lat + ", lon="
				+ lon + ", contents_regdate=" + contents_regdate
				+ ", contents_private=" + contents_private + ", contents_com="
				+ contents_com + "]";
	}
	
	

}
