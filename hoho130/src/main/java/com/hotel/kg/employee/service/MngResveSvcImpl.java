package com.hotel.kg.employee.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.hotel.kg.employee.dao.MngResveDao;
import com.hotel.kg.employee.dao.ResveDao;
import com.hotel.kg.employee.dto.ResveDto;
import com.hotel.kg.employee.dto.ShowOptnDto;
import com.hotel.kg.employee.dto.ShowResveDto;

@Service("mngResveSvcImpl")
public class MngResveSvcImpl implements IMngResveSvc{

	@Autowired
	private ResveDao  ResveDao;
	@Autowired
	private MngResveDao  MngResveDao;
	
	@Override
	public String resveKeywordSlt(Model model, int pageNum, String menu, String keyword) {
		int count;
		String resve_date;

		if("email".equals(menu)) {
			count = MngResveDao.emailGetCount(keyword);
		} else if ("name".equals(menu)) {
			count = MngResveDao.nameGetCount(keyword);
		} else {
			count = MngResveDao.resveGetCount();
		}
		
		int start 	= (pageNum - 1) * 10 + 1;
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
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("start", start);
		params.put("keyword", keyword);

		
		
		List<ShowResveDto> list = new ArrayList<ShowResveDto>();
		if("email".equals(menu) )
		{	
			list = MngResveDao.resveEmailSlt(params);
		} else if ("name".equals(menu)){
			list = MngResveDao.resveNameSlt(params);
		} else {
			list = MngResveDao.resveSltMulti(start);
		}
		
		for(int i=0; i<list.size(); i++)
		{
			ShowResveDto SRDto = list.get(i);
			
			resve_date = showDateChange(SRDto.getResve_date());
			
			SRDto.setResve_date(resve_date);
		}
		model.addAttribute("LIST", list);
		model.addAttribute("COUNT", count);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("menu", menu);
		model.addAttribute("keyword", keyword);
		
			
		return "MngResve";
	}
	
	

	@Override
	public String sltOne(Model model, String mbr_email, String date) {
		String  resve_date;
		
		resve_date = dateChange(date);
		
		ResveDto RDto = new ResveDto();
		
		RDto.setMbr_email(mbr_email);
		RDto.setResve_date(resve_date);
		
		ShowResveDto SRDto = MngResveDao.resveSltOne(RDto);
		
		resve_date = showDateChange(SRDto.getResve_date());
		SRDto.setResve_date(resve_date);
		
		List<ShowOptnDto> Optnlist = MngResveDao.sltOptn(RDto);
		
		model.addAttribute("OPTN_LIST", Optnlist);
		model.addAttribute("SRDTO", SRDto);
		
		return "MngResveOne";
	}
	
	@Override
	public String cancle(Model model, String mbr_email, String date) {

		String resve_date;
		
		System.out.println(date);
		
		resve_date = dateChange(date);
		
		ResveDto dto = new ResveDto();
		
		dto.setMbr_email(mbr_email);
		dto.setResve_date(resve_date);
		
		dto = ResveDao.sltOne(dto);
		
		dto.setResve_delete_at("Y");
		ResveDao.update(dto);
		
		return "redirect:resveSltMulti";
	}
	
	public String showDateChange(String date) {
		
		String show_date = date.substring(0, 4)+ "-" +date.substring(4, 6) + "-" + date.substring(6, 8)+ " "+ date.substring(8, 10) + ":" + date.substring(10, 12) ;
		
		return show_date;
	}
	public String dateChange(String date) {
		
		String resve_date = date.substring(0, 4)+date.substring(5, 7)+date.substring(8, 10)+date.substring(11, 13)+date.substring(14, 16);
		
		return resve_date;
	}
	
	
	
	
}
