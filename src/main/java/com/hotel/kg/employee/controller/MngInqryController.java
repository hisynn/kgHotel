package com.hotel.kg.employee.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.kg.employee.dto.InqryDto;
import com.hotel.kg.employee.service.IMngInqrySvc;

@Controller
public class MngInqryController {
	
	@Autowired
	IMngInqrySvc mngInqrySvcImpl;
	
	@RequestMapping("inqryList")
	public String selectList(Model model
			,@ModelAttribute("selectOption") String selectOption
			,@ModelAttribute("pageNum") String pageNum) {
		
		if("".equals(pageNum)) {
			pageNum = "1";
		}
		HashMap<String, Object> map = mngInqrySvcImpl.selectList(selectOption, Integer.parseInt(pageNum));
		
		model.addAttribute("selectOption", selectOption);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("themaList", map.get("themaList"));
		model.addAttribute("pageNum", map.get("pageNum"));
		model.addAttribute("startPage", map.get("startPage"));
		model.addAttribute("endPage", map.get("endPage"));
		model.addAttribute("totalPage", map.get("totalPage"));
		
		return "MngInqryList";
	}
	
	@RequestMapping("inqryContents")
	public String contents(Model model
			,@ModelAttribute("mbr_email") String mbr_email
			,@ModelAttribute("inqry_date") String inqry_date) {
		
		InqryDto dto = mngInqrySvcImpl.selectOne(mbr_email, inqry_date);
		model.addAttribute("dto", dto);
		
		return "MngInqryContents";
	}
	
}
