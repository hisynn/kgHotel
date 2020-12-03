package com.hotel.kg.inqry.controller;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotel.kg.inqry.dto.InqryDto;
import com.hotel.kg.inqry.service.IInqrySvc;

@Controller
@Repository("inqryController")
public class InqryController {
	
	@Autowired
	private IInqrySvc inqrySvc;

	private static final Logger logger = LoggerFactory.getLogger(InqryController.class);

	//문의등록
	@RequestMapping("inqryinsert")
	public String inqryInsert(InqryDto dto) {
		logger.info("=============== INQRY_INSERT CALLED ===============");
		String view = inqrySvc.inqryInsert(dto);
		return view;
	}
	
	@RequestMapping(value = "inqrySelect", produces = "application/text; charset=utf8")
	@ResponseBody
	public String inqrySelect(@ModelAttribute("email") String email, @ModelAttribute("page") String page) {
		JSONObject json = inqrySvc.inqrySelect(email, page);
		return json.toString();
	}
	
	@RequestMapping(value = "inqrySelectOne" , produces = "application/text; charset=utf8")
	@ResponseBody
	public String inqrySelectOne(@ModelAttribute("date") String date, @ModelAttribute("email") String email) {
		JSONObject json = inqrySvc.inqrySelectOne(date, email);
		return json.toString();
	}
	
	
}
