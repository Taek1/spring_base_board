package com.taek.mobile.biz.general.controller;

import java.awt.Label;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.taek.mobile.biz.general.model.board.BoardList;
import com.taek.mobile.biz.general.model.board.Post;
import com.taek.mobile.biz.general.service.GeneralService;

@Controller
public class GeneralController{
	
	@Autowired
	private GeneralService gs;
	
	@RequestMapping(value = "/")
	//@Secured({"ROLE_ADMIN","ROLE_MASTER"})
	public String main(Model model) {
//		String pass = "1234";
//		String encodedPass = new BCryptPasswordEncoder().encode(pass);
//		System.out.println(encodedPass);
		
		model.addAttribute("boardList", gs.getBoardList());
		model.addAttribute("recentPost", gs.getRecentPost());
		model.addAttribute("recentComment", gs.getRecentComment());
		return "content/main/main.tiles";
	}
	
	
	@RequestMapping(value = "/login")
	public String login(Model model) {
		System.out.println("--------------------------------------------------------*****************************");
		return "content/login.tiles";
	}
}