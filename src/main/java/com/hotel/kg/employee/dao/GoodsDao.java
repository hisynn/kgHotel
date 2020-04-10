package com.hotel.kg.employee.dao;

import java.util.List;

import com.hotel.kg.employee.dto.GoodsDto;

public interface GoodsDao {

	List<GoodsDto> sltAll();
	GoodsDto sltOne(String goods_no);
	void insert(GoodsDto dto);
	void update(GoodsDto dto);

}
