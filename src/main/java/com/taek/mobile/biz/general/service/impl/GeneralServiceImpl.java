package com.taek.mobile.biz.general.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taek.mobile.biz.general.mapper.GeneralMapper;
import com.taek.mobile.biz.general.model.board.Board;
import com.taek.mobile.biz.general.model.board.BoardGrp;
import com.taek.mobile.biz.general.model.board.BoardList;
import com.taek.mobile.biz.general.model.board.Comment;
import com.taek.mobile.biz.general.model.board.Post;
import com.taek.mobile.biz.general.service.GeneralService;

@Service
public class GeneralServiceImpl implements GeneralService{

	@Autowired
	private GeneralMapper gm;

	@Override
	public ArrayList<BoardList> getBoardList() {
		BoardList boardList_vo;
		ArrayList<BoardList> boardList = new ArrayList<BoardList>();
		
		ArrayList<BoardGrp> bg = gm.getBoardGrp();
		for(int i=0; i<bg.size(); i++){
			ArrayList<Board> bl = gm.getBoard(bg.get(i).getBg_no());
			
			for(int k=0; k<bl.size(); k++){
				ArrayList<Post> postList = gm.getPost(bl.get(k).getB_bgNo());
				System.out.println(postList.get(0).getP_content());
				bl.get(k).setPostList(postList);
			}
			
			boardList_vo = new BoardList();
			boardList_vo.setBg_no(bg.get(i).getBg_no());
			boardList_vo.setBg_name(bg.get(i).getBg_name());
			boardList_vo.setBoardList(bl);
			
			boardList.add(boardList_vo);
		}
		
		return boardList;
	}

	@Override
	public ArrayList<Post> getRecentPost() {
		ArrayList<Post> recentPost = gm.getRecentPost();
		return recentPost;
	}

	@Override
	public ArrayList<Comment> getRecentComment() {
		ArrayList<Comment> recentComment =  gm.getRecentComment();
		return recentComment;
	}
}
