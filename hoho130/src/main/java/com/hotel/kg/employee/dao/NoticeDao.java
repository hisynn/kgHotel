package com.hotel.kg.employee.dao;

import com.hotel.kg.employee.dto.NoticeDto;

public interface NoticeDao {

	NoticeDto sltOne(NoticeDto dto);
	void insert(NoticeDto dto);
	void update(NoticeDto dto);
	

}
