package com.hotel.kg.employee.dao;

import java.util.List;

import com.hotel.kg.employee.dto.OptnDto;

public interface OptnDao {

	List<OptnDto> sltAll();
	OptnDto sltOne(OptnDto dto);
	void update(OptnDto dto);

}
