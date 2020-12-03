package com.hotel.kg.employee.service;

import java.util.ArrayList;

import com.hotel.kg.employee.dto.GoodsDto;
import com.hotel.kg.employee.dto.GoodsTyDto;
import com.hotel.kg.employee.dto.ResveOptnDto;
import com.hotel.kg.employee.dto.RumtyDto;


public interface IMngGoodsSvc {

	String getOptionNo();
	String getGoodsNo();
	String getRumtyNo();
	
	void insertRumty(RumtyDto dto) throws Exception;
	void insertGoods(GoodsDto dto) throws Exception;
	void insertOption(ResveOptnDto dto) throws Exception;
	
	ArrayList<RumtyDto> selectRumtyList();
	ArrayList<GoodsDto> selectGoodsList();
	ArrayList<ResveOptnDto> selectOptionList();
	ArrayList<GoodsTyDto> selectGoods_TyList();
	
	RumtyDto selectOneRumty(String rumty_no);
	GoodsDto selectOneGoods(String goods_no);
	ResveOptnDto selectOneOption(String option_no);
	
	void updateRumty(RumtyDto dto) throws Exception;
	void updateGoods(GoodsDto dto) throws Exception;
	void updateOption(ResveOptnDto dto) throws Exception;

}
