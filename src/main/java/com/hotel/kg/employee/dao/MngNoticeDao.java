package com.hotel.kg.employee.dao;

import java.util.List;

import com.hotel.kg.employee.dto.NoticeDto;

public interface MngNoticeDao {

	
	List<NoticeDto> noticeSltMulti(int start);
	int noticeGetCount();
	

}
