package com.hotel.kg.employee.service;

import org.springframework.ui.Model;

public interface IMngResveSvc {
	
	
	String resveKeywordSlt(Model model, int page, String menu, String keyword);
	String cancle(Model model, String mbr_email, String resve_date);
	String sltOne(Model model, String mbr_email, String resve_date);
	
	
}
