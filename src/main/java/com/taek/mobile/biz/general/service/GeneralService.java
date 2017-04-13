package com.taek.mobile.biz.general.service;

import java.util.ArrayList;

import com.taek.mobile.biz.general.model.board.BoardList;
import com.taek.mobile.biz.general.model.board.Comment;
import com.taek.mobile.biz.general.model.board.Post;

public interface GeneralService {
	public ArrayList<BoardList> getBoardList();
	public ArrayList<Post> getRecentPost();
	public ArrayList<Comment> getRecentComment();
}
