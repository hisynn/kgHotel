package com.hotel.kg.employee.service;

import java.util.HashMap;

import com.hotel.kg.employee.dto.InqryDto;

public interface IMngInqrySvc {

	HashMap<String, Object> selectList(String selectOption, int pageNum);
	InqryDto selectOne(String email, String inqry_Date);
	void update(InqryDto dto) throws Exception;
}
