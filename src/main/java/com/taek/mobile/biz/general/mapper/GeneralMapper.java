package com.taek.mobile.biz.general.mapper;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.taek.mobile.biz.general.model.board.Board;
import com.taek.mobile.biz.general.model.board.BoardGrp;
import com.taek.mobile.biz.general.model.board.Comment;
import com.taek.mobile.biz.general.model.board.Post;

public interface GeneralMapper {
	public ArrayList<BoardGrp> getBoardGrp(); 
	public ArrayList<Board> getBoard(int bgNo);
	public ArrayList<Post> getPost(int bNo);
	public ArrayList<Post> getRecentPost();
	public ArrayList<Comment> getRecentComment();
}