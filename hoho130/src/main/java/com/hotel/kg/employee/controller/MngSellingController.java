package com.hotel.kg.employee.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.kg.employee.service.IMngSellingSvc;

@Controller("mngSellingController")
public class MngSellingController {

	@Autowired
	private IMngSellingSvc mngSellingSvcImpl;
	
	
	@RequestMapping("sellingSltDate")
	public String nameSlt(Model model, @ModelAttribute("pageNum")String pageNum, @ModelAttribute("category")String category, @ModelAttribute("start")String start, @ModelAttribute("end")String end) {
		
		if("".equals(pageNum)) {
			pageNum = "1";
		}
		if("".equals(start)) {
			long time = System.currentTimeMillis(); 
			SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-MM-dd");
			start = dayTime.format(new Date(time));
		}
		if("".equals(end)) {
			long time = System.currentTimeMillis(); 
			SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-MM-dd");
			end = dayTime.format(new Date(time));
		}
		
		String viewPage = mngSellingSvcImpl.sellingSltDate(model, Integer.parseInt(pageNum), category, start, end);
		
		return viewPage;
	}	
	
}
