package com.hotel.kg.employee.dao;

import com.hotel.kg.employee.dto.MbrDto;

public interface IMbrDao {

	MbrDto selectOne(String id);
	void update(MbrDto dto);
	
}
