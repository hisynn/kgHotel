package com.hotel.kg.employee.service;

import org.springframework.ui.Model;

import com.hotel.kg.employee.dto.NoticeDto;

public interface IMngNoticeSvc {
	
	String noticeSltMulti(Model model, int pageNum);
	
	String insert(Model model, NoticeDto dto);
	String update(Model model, NoticeDto dto);
	String delete(Model model, String mngr_id, String date);
	String sltOne(Model model, String mngr_id, String date);
	
}
