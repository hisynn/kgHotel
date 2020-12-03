package com.hotel.kg.notice.service;



import org.springframework.ui.Model;

import com.hotel.kg.notice.dto.NoticeDTO;
import com.hotel.kg.notice.dto.NoticeEtcDTO;


public interface INoticeService {
	
	public String selectAll(Model model, NoticeEtcDTO EDto);
	
	public String selectDetail(NoticeEtcDTO EDto, NoticeDTO NDto, Model model);

}
