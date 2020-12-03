package com.hotel.kg.employee.dao;

import java.util.List;

import com.hotel.kg.employee.dto.ResveOptnDto;

public interface ResveOptnDao {

	List<ResveOptnDto> sltAll();
	ResveOptnDto sltOne(String Optn_no);
	void insert(ResveOptnDto dto);
	void update(ResveOptnDto dto);

}
