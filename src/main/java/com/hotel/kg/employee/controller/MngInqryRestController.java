package com.hotel.kg.employee.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.kg.employee.dto.InqryDto;
import com.hotel.kg.employee.service.IMngInqrySvc;

@Controller
@RequestMapping("/ajaxInqry")
public class MngInqryRestController {
	
	@Autowired
	IMngInqrySvc mngInqrySvcImpl;
		
	@RequestMapping("/ajaxUpdate")
	public ModelAndView update(InqryDto dto) throws Exception {

		ModelAndView mv = new ModelAndView("jsonView");
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
		dto.setAnswer_date(sdf.format(date));	
		try {
			mngInqrySvcImpl.update(dto);
			if("N".equals(dto.getDelete_at())) {
				mv.addObject("msg", "답변이 등록 되었습니다.");
			} else if("Y".equals(dto.getDelete_at())) {
				mv.addObject("msg", "삭제 되었습니다.");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
