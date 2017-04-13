package com.taek.mobile.biz.general.model.board;

import java.sql.Date;

public class Post {
	
	int p_no;
	String p_title;
	String p_content;
	int p_bNo;
	int p_uid;
	String p_ip;
	Date p_date;
	
	
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public int getP_bNo() {
		return p_bNo;
	}
	public void setP_bNo(int p_bNo) {
		this.p_bNo = p_bNo;
	}
	public int getP_uid() {
		return p_uid;
	}
	public void setP_uid(int p_uid) {
		this.p_uid = p_uid;
	}
	public String getP_ip() {
		return p_ip;
	}
	public void setP_ip(String p_ip) {
		this.p_ip = p_ip;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	
}
