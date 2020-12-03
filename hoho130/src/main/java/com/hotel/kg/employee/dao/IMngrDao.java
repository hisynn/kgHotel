package com.hotel.kg.employee.dao;

import com.hotel.kg.employee.dto.MngrDto;

public interface IMngrDao {
	void update(MngrDto dto);
	MngrDto selectOne(String id);
}
