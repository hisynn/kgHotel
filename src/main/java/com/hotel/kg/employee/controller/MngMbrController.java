package com.hotel.kg.employee.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.kg.employee.dto.MbrDto;
import com.hotel.kg.employee.dto.SelectDto;
import com.hotel.kg.employee.service.IMngMbrSvc;

@Controller
public class MngMbrController { 
	
	@Autowired
	IMngMbrSvc mngMbrSvcImpl;
		
	@RequestMapping(value = "/memberList")
	public String selectList(Model model
			,@ModelAttribute("selectDTO") SelectDto selectDTO
			,@ModelAttribute("pageNum") String pageNum) {
		
		if("".equals(pageNum)) {
			pageNum = "1";
		}
		
		HashMap<String, Object> map = mngMbrSvcImpl.selectList(selectDTO, Integer.parseInt(pageNum));
		
		model.addAttribute("selectOption", selectDTO.getSelectOption());
		model.addAttribute("inputValue", selectDTO.getInputValue());
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageNum", map.get("pageNum"));
		model.addAttribute("startPage", map.get("startPage"));
		model.addAttribute("endPage", map.get("endPage"));
		model.addAttribute("totalPage", map.get("totalPage"));
		
		return "MngMbrList";
	}
	
	@RequestMapping(value = "/memberUpdateForm")
	public String updateForm(Model model,
			@ModelAttribute("mbr_email") String mbr_email) {
		
		MbrDto dto = mngMbrSvcImpl.selectOne(mbr_email);
		
		model.addAttribute("dto", dto);
		
		return "MngMbrUpdateForm";
	}
		
}
