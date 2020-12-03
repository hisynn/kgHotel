package com.hotel.kg.employee.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.kg.employee.dto.GoodsDto;
import com.hotel.kg.employee.dto.GoodsTyDto;
import com.hotel.kg.employee.dto.ResveOptnDto;
import com.hotel.kg.employee.dto.RumtyDto;
import com.hotel.kg.employee.service.IMngGoodsSvc;

@RestController
public class MngGoodsRestController {
	
	@Autowired
	IMngGoodsSvc mngGoodsSvcImpl;
	
	@RequestMapping("ajaxSelectList")
	public ModelAndView ajaxSelectList( 
			@ModelAttribute("keyword") String selectKeyword) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		if("rumty".equals(selectKeyword)) {
			ArrayList<RumtyDto> list = mngGoodsSvcImpl.selectRumtyList();
			
			mv.addObject("list", list);
		} else if("goods".equals(selectKeyword)) {
			ArrayList<GoodsDto> list = mngGoodsSvcImpl.selectGoodsList();
			ArrayList<GoodsTyDto> goodsTyList = mngGoodsSvcImpl.selectGoods_TyList();
			ArrayList<RumtyDto> rumtyList = mngGoodsSvcImpl.selectRumtyList();
			
			mv.addObject("list", list);
			mv.addObject("goodsTyList", goodsTyList);
			mv.addObject("rumtyList", rumtyList);
		} else if("option".equals(selectKeyword)) {
			ArrayList<ResveOptnDto> list = mngGoodsSvcImpl.selectOptionList();
			
			mv.addObject("list", list);
		}
		
		return mv;
	}
	
	@RequestMapping("ajaxInsertGoods")
	public ModelAndView insertGoods(GoodsDto dto) throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		try {
			dto.setGoods_no(mngGoodsSvcImpl.getGoodsNo());
			mngGoodsSvcImpl.insertGoods(dto);
			mv.addObject("msg", "등록 되었습니다.");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return mv;		
	}
	
	@RequestMapping("ajaxInsertRumty")
	public ModelAndView insertRumty(RumtyDto dto) throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		try {
			dto.setRumty_no(mngGoodsSvcImpl.getRumtyNo());
			mngGoodsSvcImpl.insertRumty(dto);
			mv.addObject("msg", "등록 되었습니다.");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}
	
	
	@RequestMapping("ajaxInsertOption")
	public ModelAndView insertOption(ResveOptnDto dto) throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		try {
			dto.setOptn_no(mngGoodsSvcImpl.getOptionNo());
			mngGoodsSvcImpl.insertOption(dto);
			mv.addObject("msg", "등록 되었습니다.");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}
	
	@RequestMapping("ajaxUpdateRumty")
	public ModelAndView updateRumty(RumtyDto dto) throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		try {
			mngGoodsSvcImpl.updateRumty(dto);
			mv.addObject("msg", "수정 되었습니다.");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}
	
	@RequestMapping("ajaxUpdateGoods")
	public ModelAndView updateGoods(GoodsDto dto) throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		try {
			mngGoodsSvcImpl.updateGoods(dto);
			if("N".equals(dto.getGoods_delete_at())) {
				mv.addObject("msg", "수정 되었습니다.");
			} else if("Y".equals(dto.getGoods_delete_at())) {
				mv.addObject("msg", "삭제 되었습니다.");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}

	@RequestMapping("ajaxUpdateOption")
	public ModelAndView updateOption(ResveOptnDto dto) throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		try {
			mngGoodsSvcImpl.updateOption(dto);
			if("N".equals(dto.getOptn_delete_at())) {
				mv.addObject("msg", "수정 되었습니다.");
			} else if("Y".equals(dto.getOptn_delete_at())) {
				mv.addObject("msg", "삭제 되었습니다.");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}
	
}
