package com.hotel.kg.employee.dao;

import java.util.ArrayList;

import com.hotel.kg.employee.dto.GoodsDto;
import com.hotel.kg.employee.dto.GoodsTyDto;
import com.hotel.kg.employee.dto.ResveOptnDto;
import com.hotel.kg.employee.dto.RumtyDto;

public interface IMngGoodsDao {
	
	int getMaxRumtyCnt();
	int getMaxOptionCnt();
	int getMaxGoodsCnt();
	
	ArrayList<RumtyDto> selectRumtyList();
	ArrayList<GoodsDto> selectGoodsList();
	ArrayList<ResveOptnDto> selectOptionList();
	ArrayList<GoodsTyDto> selectGoods_TyList();

}
