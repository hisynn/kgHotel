package com.hotel.kg.employee.dao;

import java.util.HashMap;
import java.util.List;

import com.hotel.kg.employee.dto.SellingDto;

public interface MngSellingDao {
	
	List<SellingDto> goodsSellingSltDate(HashMap<String, Object> hm);
	List<SellingDto> optnSellingSltDate(HashMap<String, Object> hm);
	int goodsSellingGetCount(HashMap<String, Object> hm);
	int optnSellingGetCount(HashMap<String, Object> hm);
	int goodsSellingSlt(HashMap<String, Object> hm);
	long optnSellingSlt(HashMap<String, Object> hm);
	
}
