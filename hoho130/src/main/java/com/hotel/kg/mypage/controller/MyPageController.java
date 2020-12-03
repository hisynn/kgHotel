package com.hotel.kg.mypage.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.kg.notice.dto.NoticeDTO;
import com.hotel.kg.notice.dto.NoticeEtcDTO;
import com.hotel.kg.notice.service.INoticeService;

@Controller
@Repository("MyPageController")
public class MyPageController {

	@Autowired
	INoticeService NoticeService;
	
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@RequestMapping(value="myPage")
	public String Mypage(NoticeEtcDTO EDto, NoticeDTO NDto, Model model, HttpSession session) {
		logger.info("=============== NOTICE DETAIL ===============");

		if(session.getAttribute("LOGIN")==null) {
			return "redirect:/login.jsp";
		}
		
		return "myPage";
	}
	
	@RequestMapping(value="mypagelogout")
	public String Mypage(HttpSession session) {
		logger.info("=============== NOTICE DETAIL ===============");

		session.invalidate();
		
		return "redirect:/";
	}
	
}
