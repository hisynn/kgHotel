package com.hotel.kg.member.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotel.kg.member.dto.MemberDTO;
import com.hotel.kg.member.mail.Mail;
import com.hotel.kg.member.service.IMemberService;

	
@Controller
@Repository("MemberController")
public class MemberController {
	
	@Autowired
	private IMemberService MemberService;

private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value = "login")
	public String login(HttpSession session, MemberDTO dto) {
		logger.info("=============== LOGIN CALLED ===============");
		
		String Page = MemberService.LoginCheck(dto, session);
		System.out.println("성별 : "+dto.getMbr_sexdstn());
		
		return Page;
	}
	
	@RequestMapping(value = "register")
	public String register(HttpSession session, MemberDTO dto) {
		logger.info("=============== REGISTER CALLED ===============");
		String Page = MemberService.insert(dto);
		System.out.println(dto.getMbr_tel());
		System.out.println(dto.getMbr_tel1());
		System.out.println(dto.getMbr_tel2());
		System.out.println(dto.getMbr_tel3());
		
		return Page;
		
	}
	
	@RequestMapping(value = "update")
	public String update(MemberDTO dto) {
		logger.info("=============== UPDATE CALLED ===============");
		MemberService.update(dto);
		System.out.println(dto.getMbr_tel());
		System.out.println(dto.getMbr_tel1());
		System.out.println(dto.getMbr_tel2());
		System.out.println(dto.getMbr_tel3());
		
		return "myPage";
		
	}
	
	@RequestMapping(value = "PWupdate")
	public String PWupdate(MemberDTO dto, HttpSession session) {
		System.out.println(dto.getMbr_email());
		MemberService.updatePW(dto, session);
		
		return "myPage";
		
	}
	
	
	@RequestMapping(value = "searchUserInfo")
	public String searchUserInfo(MemberDTO dto, HttpSession session) {
		System.out.println("searchUserInfo 진입");
		
		return "searchUserInfo";
		
	}
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "main";
	}
	
	@RequestMapping(value = "logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		
		return "redirect:/main.jsp";
	}
	
	@ResponseBody
	@RequestMapping(value = "checkId", method=RequestMethod.POST)
	public int idCheck(MemberDTO dto) {
		System.out.println("CHECKID 리퀘스트 바디 당도했음 값 : "+dto.getMbr_email());		
		int result = MemberService.selectOne(dto);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "checkPw", method=RequestMethod.POST)
	public int pwCheck(MemberDTO dto, HttpSession session) {
//		public int pwCheck(MemberDTO dto, HttpSession session) {
		System.out.println("CHECKPW 리퀘스트 바디 당도했음 값 : "+dto.getMbr_pw());
		System.out.println("CHECKPW 리퀘스트 바디 당도했음 값 : "+dto.getMbr_email());
		
//		session.setAttribute("abc","ㅎㅎㅎ");
		int result = MemberService.checkPw(dto);
//		if(result!=0) {
//		session.setAttribute("dto", dto);
//		}
		
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "searchId", method=RequestMethod.POST)
	public MemberDTO searchId(MemberDTO dto) {
		System.out.println("searchId 도착 했슘 name : "+dto.getMbr_name());
		System.out.println("searchId 도착 했슘 email : "+dto.getMbr_email());
		System.out.println("searchId 도착 했슘 brthdy : "+dto.getMbr_brthdy());
		System.out.println("searchId 도착 했슘 tel : "+dto.getMbr_tel());
		
		boolean result = false;
		result = MemberService.searchId(dto);
		System.out.println("서비스 갔다온 컨트롤 email :"+dto.getMbr_email());
		System.out.println("서비스 갔다온  boolean : "+result);
		if(result==true) {
			return dto;
		}
		return dto;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "searchPw", method=RequestMethod.POST)
	public MemberDTO searchPw(MemberDTO dto, Mail mail) {
		System.out.println("searchPw 도착 했슘 email : "+dto.getMbr_email());
		System.out.println("searchPw 도착 했슘 name : "+dto.getMbr_name());
		System.out.println("searchPw 도착 했슘 tel : "+dto.getMbr_tel());
//		System.out.println("searchPw 도착 했슘 brthdy : "+dto.getMbr_brthdy());
		
		boolean result = false;
		
		result = MemberService.searchPw(dto, mail);
		
		System.out.println("pw 서비스 갔다온 컨트롤 email :"+dto.getMbr_email());
		System.out.println("pw 서비스 갔다온  boolean : "+result);
		
		if(result==true) {
			System.out.println("리턴mail완료");
			return dto;
		}
		return dto;
	}
	
	
	@RequestMapping(value = "logUpdatePW")
	public String logUpdatePW(MemberDTO dto) {
		System.out.println("컨트롤러 logUpdatePW  EMAIL : "+dto.getMbr_email());
		System.out.println("컨트롤러 logUpdatePW  PASSWORD : "+dto.getPassword());
		System.out.println("컨트롤러 logUpdatePW : MBR_PW :"+dto.getMbr_pw());
		MemberService.logUpdatePW(dto);
		
//		return "ababab";
		return "redirect:/logout";
		
	}
	
	
	
	
	
//--------------------------------------------------------------------
}

