package com.hotel.kg.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.kg.employee.dto.GoodsDto;
import com.hotel.kg.employee.dto.ResveOptnDto;
import com.hotel.kg.employee.dto.RumtyDto;
import com.hotel.kg.employee.service.IMngGoodsSvc;

@Controller
public class MngGoodsController {
	
	@Autowired
	IMngGoodsSvc mngGoodsSvcImpl;

	@RequestMapping("goodsList")
	public String list(){

		
		return "MngGoodsList";
	}
	
	@RequestMapping(value = "insertForm")
	public String insertForm(Model model) {
		
		model.addAttribute("rumtyList", mngGoodsSvcImpl.selectRumtyList());
		model.addAttribute("goods_TyList", mngGoodsSvcImpl.selectGoods_TyList());
		
		return "MngGoodsInsertForm";
	}
	
	
	@RequestMapping(value = "rumtyUpdateForm")
	public String rumtyUpdateForm(Model model
			, @ModelAttribute("rumty_no") String rumty_no) {
		
		RumtyDto dto = mngGoodsSvcImpl.selectOneRumty(rumty_no);
			
		model.addAttribute("dto", dto);
		
		return "MngRumtyUpdateForm";
	}
	
	@RequestMapping(value = "goodsUpdateForm")
	public String goodsUpdateForm(Model model
			, @ModelAttribute("goods_no") String goods_no) {
		
		GoodsDto dto = mngGoodsSvcImpl.selectOneGoods(goods_no);
			
		model.addAttribute("dto", dto);
		model.addAttribute("rumtyList", mngGoodsSvcImpl.selectRumtyList());
		model.addAttribute("goods_TyList", mngGoodsSvcImpl.selectGoods_TyList());
		return "MngGoodsUpdateForm";
	}
	
	@RequestMapping(value = "optionUpdateForm")
	public String optionUpdateForm(Model model
			, @ModelAttribute("optn_no") String optn_no) {
		
		ResveOptnDto dto = mngGoodsSvcImpl.selectOneOption(optn_no);
			
		model.addAttribute("dto", dto);
		
		return "MngOptionUpdateForm";
	}
	
	



}