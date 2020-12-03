package com.hotel.kg.resvelist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotel.kg.resvelist.service.IResveListService;

@Controller
@Repository("reserveListController")
public class ResveListController {
	
	@Autowired
	IResveListService reservSvc;
	
	@RequestMapping(value = "resveselect", produces = "application/text; charset=utf8")
	@ResponseBody
	public String resveSelect(@ModelAttribute("email") String email
			, @ModelAttribute("name") String name,@ModelAttribute("tel") String tel) {
		String json = reservSvc.resveSelect(email, name, tel);
		return json;
	}
	
	@RequestMapping(value = "resveselectmem" ,produces = "application/text; charset=utf8")
	@ResponseBody
	public String resveSelect(@ModelAttribute("email") String email) {
		String json = reservSvc.resveSelectMem(email);
		return json;
	}
	
//	컨트롤러 종료.
}
