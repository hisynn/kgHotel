package com.hotel.kg.notice.dao;

import java.util.List;

import com.hotel.kg.notice.dto.NoticeDTO;
import com.hotel.kg.notice.dto.NoticeEtcDTO;

public interface INoticeDAO {
	
	
	public List<NoticeDTO> selectAll(NoticeEtcDTO EDTO);
	
	public int CountAll();

	public NoticeDTO selectOne(NoticeDTO NDto);
	
	public void noticeUpdate(NoticeDTO NDto);
}
