package com.hotel.kg.member.service;



import javax.servlet.http.HttpSession;

import com.hotel.kg.member.dto.MemberDTO;
import com.hotel.kg.member.mail.Mail;

public interface IMemberService {
	
	public String LoginCheck(MemberDTO dto, HttpSession session);
	
	public String insert(MemberDTO dto);
	
	public String update(MemberDTO dto);
	
	public String delete(String email);
	
	public int selectOne(MemberDTO dto);
	
	public int checkPw(MemberDTO dto);
	
	public String updatePW(MemberDTO dto, HttpSession session);
	
	public boolean searchId(MemberDTO dto);
	
	public boolean searchPw(MemberDTO dto, Mail mail);

	public MemberDTO logUpdatePW(MemberDTO dto);
}
