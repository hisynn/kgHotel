package com.hotel.kg.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.kg.employee.dto.MbrDto;
import com.hotel.kg.employee.service.IMngMbrSvc;

@RestController
public class MngMbrRestController {
	
	@Autowired
	IMngMbrSvc mngMbrSvcImpl;
	
	@RequestMapping(value = "/ajaxMemberUpdate")
	public ModelAndView update(MbrDto dto) throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		try {
			mngMbrSvcImpl.update(dto);
			if("Y".equals(dto.getAct_at())) {
				mv.addObject("msg", "수정 되었습니다.");
			} else if("N".equals(dto.getAct_at())) {
				mv.addObject("msg", "탈퇴처리 되었습니다.");
			}			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}

}
