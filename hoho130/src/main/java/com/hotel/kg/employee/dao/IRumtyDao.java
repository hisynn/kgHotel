package com.hotel.kg.employee.dao;

import com.hotel.kg.employee.dto.RumtyDto;

public interface IRumtyDao {

	RumtyDto sltOne(String rumty_no);
	void insert(RumtyDto dto);
	void update(RumtyDto dto);
}
