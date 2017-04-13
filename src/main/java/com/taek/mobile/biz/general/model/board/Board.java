package com.taek.mobile.biz.general.model.board;

import java.util.ArrayList;

public class Board {
	
	int b_no;
	int b_bgNo;
	String b_name;
	ArrayList<Post> postList;
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public int getB_bgNo() {
		return b_bgNo;
	}
	public void setB_bgNo(int b_bgNo) {
		this.b_bgNo = b_bgNo;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public ArrayList<Post> getPostList() {
		return postList;
	}
	public void setPostList(ArrayList<Post> postList) {
		this.postList = postList;
	}
	
}
