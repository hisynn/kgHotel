package com.hotel.kg.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.kg.employee.service.IMngRumSvc;

@Controller
public class MngRumController {

	@Autowired
	private IMngRumSvc mngRumSvcImpl;
	
	
	@RequestMapping("rumSltAll")
	public String select(Model model) {
		String viewPage = mngRumSvcImpl.sltAll(model);
		
		return viewPage;
	}	
	
	@RequestMapping("rumChkin")
	public String chkin(@RequestParam("rum_no")String rum_no, Model model) {
		String viewPage = mngRumSvcImpl.chkin(model, rum_no);
		
		return viewPage;
	}	
	@RequestMapping("rumChckt")
	public String chckt(@RequestParam("rum_no")String rum_no, Model model) {
		String viewPage = mngRumSvcImpl.chckt(model, rum_no);

		return viewPage;
	}	
	@RequestMapping("rumCheck")
	public String rumcheck(@RequestParam("rum_no")String rum_no, Model model) {
		String viewPage = mngRumSvcImpl.rumcheck(model, rum_no);

		return viewPage;
	}	
	@RequestMapping("rumCheckEnd")
	public String rumcheckEnd(@RequestParam("rum_no")String rum_no, Model model) {
		String viewPage = mngRumSvcImpl.rumcheckEnd(model, rum_no);

		return viewPage;
	}	
	
	

	
}
