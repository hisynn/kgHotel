package com.hotel.kg.employee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hotel.kg.employee.dto.MngrDto;
import com.hotel.kg.employee.service.IMngMyPageSvc;

@Controller
public class MngMyPageController {
	
	@Autowired
	IMngMyPageSvc mngMyPageSvcImpl;

	@RequestMapping(value = "/changePw")
	public String updateForm() {
		return "MngMyPage";
	}
	
	@RequestMapping(value = "/updateManager", method=RequestMethod.POST)
	public String update(HttpSession session,
							 @ModelAttribute("pw1") String password) throws Exception{
		
		MngrDto dto = new MngrDto();
		dto.setMngr_id(String.valueOf(session.getAttribute("id")));
		dto.setMngr_pw(password);
		
		mngMyPageSvcImpl.update(dto);

		session.setAttribute("pw", password);
		return "redirect:/main";
	}
}
