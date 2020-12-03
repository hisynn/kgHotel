package com.hotel.kg.employee.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.hotel.kg.employee.dao.MngNoticeDao;
import com.hotel.kg.employee.dao.NoticeDao;
import com.hotel.kg.employee.dto.NoticeDto;

@Service("mngNoticeSvcImpl")
public class MngNoticeSvcImpl implements IMngNoticeSvc{
	
	@Autowired
	MngNoticeDao MngNoticeDao;
	@Autowired
	NoticeDao NoticeDao;

	
	@Override
	public String noticeSltMulti(Model model, int pageNum) {
		
		int start 	= (pageNum - 1) * 10 + 1;
		int count   = MngNoticeDao.noticeGetCount();
		
		int pageCount = count / 10 + (count % 10 == 0 ? 0 : 1);
		int startPage = 1;

		if (pageNum % 10 != 0)
			startPage = (int) (pageNum / 10) * 10 + 1;
		else
			startPage = ((int) (pageNum / 10) - 1) * 10 + 1;

		int pageBlock = 10;

		int endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;
		
		List<NoticeDto> list 	= MngNoticeDao.noticeSltMulti(start);
		
		
		for(int i=0; i< list.size(); i++)
		{
			NoticeDto NDto = list.get(i);
			
			String rgsde = showRgsdeChange(NDto.getRgsde());
			NDto.setRgsde(rgsde);
			
		}
		model.addAttribute("LIST", list);
		model.addAttribute("COUNT", count);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("pageNum", pageNum);
		
		
		
		return "MngNotice";
	}
	
	@Override
	public String insert(Model model, NoticeDto dto) {
		
		long time = System.currentTimeMillis(); 
		SimpleDateFormat dayTime = new SimpleDateFormat("yyyyMMddhhmm");
		String rgsde = dayTime.format(new Date(time));
		
		dto.setMngr_id("idryour");
		dto.setRdcnt(0);
		dto.setRgsde(rgsde);
		dto.setDelete_at("N");
		
		
		NoticeDao.insert(dto);
		
		return "redirect:noticeSltMulti";
	}
	
	@Override
	public String update(Model model, NoticeDto dto) {
		String rgsde;
		rgsde = rgsdeChange(dto.getRgsde());
		dto.setRgsde(rgsde);
		
		NoticeDao.update(dto);
		
		return "redirect:noticeSltMulti";
	}

	@Override
	public String delete(Model model, String mngr_id, String date) {
		
		String rgsde;
		rgsde = rgsdeChange(date);
		NoticeDto dto = new NoticeDto();
		dto.setMngr_id(mngr_id);
		dto.setRgsde(rgsde);
		
		dto = NoticeDao.sltOne(dto);
		
		dto.setDelete_at("Y");
		
		NoticeDao.update(dto);
		
		return "redirect:noticeSltMulti";
	}
	
	

	@Override
	public String sltOne(Model model, String mngr_id, String rgsde) {
		
		NoticeDto NDto = new NoticeDto();
		String date = rgsdeChange(rgsde);
		System.out.println(date);
		NDto.setMngr_id(mngr_id);
		NDto.setRgsde(date);
		
		NDto = NoticeDao.sltOne(NDto);
		
		NDto.setRgsde(rgsde);
		
		model.addAttribute("NOTICE", NDto);
		
		return "MngNoticeOne";
	}

	public String showRgsdeChange(String date) {
		
		String rgsde = date.substring(0, 4)+ "-" +date.substring(4, 6) + "-" + date.substring(6, 8) + " " + date.substring(8, 10)+ ":"+ date.substring(10, 12);
		
		return rgsde;
	}
	
	public String showDateChange(String date) {
		
		String show_date = date.substring(0, 4)+ "-" +date.substring(4, 6) + "-" + date.substring(6, 8);
		
		return show_date;
	}
	public String dateChange(String date, String hour) {
		
		String resve_date = date.substring(0, 4)+date.substring(5, 7)+date.substring(8, 10)+hour.substring(0, 2)+hour.substring(3, 5);
		
		return resve_date;
	}
	
	public String rgsdeChange(String showRgsde) {
		
		String rgsde = showRgsde.substring(0, 4)+showRgsde.substring(5, 7)+showRgsde.substring(8, 10)
		+ showRgsde.substring(11, 13) + showRgsde.substring(14, 16);
		
		return rgsde;
	}
	

	
	
}
