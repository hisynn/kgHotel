package com.hotel.kg.employee.dao;

import java.util.List;

import com.hotel.kg.employee.dto.RumDto;

public interface RumDao {

	List<RumDto> sltAll();
	void update(RumDto dto);
	RumDto sltOne(String rum_no);

}
