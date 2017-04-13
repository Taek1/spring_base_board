package com.taek.mobile.biz.general.model.board;

import java.util.ArrayList;

public class BoardList {
	
	int bg_no;
	String bg_name;
	ArrayList<Board> boardList;
	
	public int getBg_no() {
		return bg_no;
	}
	public void setBg_no(int bg_no) {
		this.bg_no = bg_no;
	}
	public String getBg_name() {
		return bg_name;
	}
	public void setBg_name(String bg_name) {
		this.bg_name = bg_name;
	}
	public ArrayList<Board> getBoardList() {
		return boardList;
	}
	public void setBoardList(ArrayList<Board> boardList) {
		this.boardList = boardList;
	}
	
}
