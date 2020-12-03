package com.hotel.kg.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.kg.employee.service.IMngResveSvc;

@Controller("mngResveController")
public class MngResveController {

	@Autowired
	private IMngResveSvc mngResveSvcImpl;
	
	
	
	
	@RequestMapping("resveSltMulti")
	public String sltMulti(Model model, @ModelAttribute("pageNum")String pageNum, @ModelAttribute("menu")String menu, @ModelAttribute("keyword")String keyword ) {
		String viewPage = null;
		
		if("".equals(pageNum)) {
			pageNum = "1";
		}
			viewPage = mngResveSvcImpl.resveKeywordSlt(model, Integer.parseInt(pageNum), menu, keyword);
		
		
		
		return viewPage;
	}	
	
	
	@RequestMapping("resveCancle")
	public String cancle(Model model, @RequestParam("mbr_email")String email, @RequestParam("date")String date ) {
		String viewPage = mngResveSvcImpl.cancle(model, email, date);
		
		return viewPage;
	}	
	
	@RequestMapping("resveSltOne")
	public String sltOne(Model model, @RequestParam("mbr_email")String mbr_email, @RequestParam("date")String date ) {
		String viewPage = mngResveSvcImpl.sltOne(model, mbr_email, date);
		
		return viewPage;
	}	
	
	
	

	
}
