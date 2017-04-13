package com.taek.mobile.biz.general.model.board;

import java.sql.Date;

public class Comment {
	int c_no;
	int c_pNo;
	String c_content;
	int c_uid;
	String c_ip;
	Date c_date;
	
	
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public int getC_pNo() {
		return c_pNo;
	}
	public void setC_pNo(int c_pNo) {
		this.c_pNo = c_pNo;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public int getC_uid() {
		return c_uid;
	}
	public void setC_uid(int c_uid) {
		this.c_uid = c_uid;
	}
	public String getC_ip() {
		return c_ip;
	}
	public void setC_ip(String c_ip) {
		this.c_ip = c_ip;
	}
	public Date getC_date() {
		return c_date;
	}
	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}
}
