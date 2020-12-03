package com.hotel.kg.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.kg.employee.dto.NoticeDto;
import com.hotel.kg.employee.service.IMngNoticeSvc;

@Controller
public class MngNoticeController {

	@Autowired
	private IMngNoticeSvc mngNoticeSvcImpl;
	
	
	
	
	@RequestMapping("noticeSltMulti")
	public String sltAll(Model model, @ModelAttribute("pageNum")String pageNum ) {
		
		if("".equals(pageNum)) {
			pageNum = "1";
		}
		String viewPage = mngNoticeSvcImpl.noticeSltMulti(model, Integer.parseInt(pageNum));
		
		return viewPage;
	}	
	
	@RequestMapping("noticeInsert")
	public String insert(Model model, NoticeDto dto) {
		String viewPage = mngNoticeSvcImpl.insert(model, dto);
		
		return viewPage;
	}	
	
	@RequestMapping("noticeUpdate")
	public String update(Model model, NoticeDto dto) {
		String viewPage = mngNoticeSvcImpl.update(model, dto);
		
		return viewPage;
	}	
	
	@RequestMapping("noticeDelete")
	public String delete(Model model, @RequestParam("mngr_id")String mngr_id, @RequestParam("rgsde")String rgsde) {
		String viewPage = mngNoticeSvcImpl.delete(model, mngr_id, rgsde);
		
		return viewPage;
	}	
	
	
	@RequestMapping("noticeSltOne")
	public String sltOne(Model model, @RequestParam("mngr_id")String mngr_id, @RequestParam("rgsde")String rgsde ) {
		String viewPage = mngNoticeSvcImpl.sltOne(model, mngr_id, rgsde);
		
		return viewPage;
	}	
	
	
	

	
}
