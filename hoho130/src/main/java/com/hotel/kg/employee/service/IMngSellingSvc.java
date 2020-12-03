package com.hotel.kg.employee.service;

import org.springframework.ui.Model;

public interface IMngSellingSvc {
	
	String sellingSltDate(Model model, int pageNum, String category, String start, String end);

}
