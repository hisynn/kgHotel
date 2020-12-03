package com.hotel.kg.employee.service;

import org.springframework.ui.Model;

public interface IMngRumSvc {

	String sltAll(Model model);
	String chkin(Model model, String rum_no);
	String chckt(Model model, String rum_no);
	String rumcheck(Model model, String rum_no);
	String rumcheckEnd(Model model, String rum_no);
	


}