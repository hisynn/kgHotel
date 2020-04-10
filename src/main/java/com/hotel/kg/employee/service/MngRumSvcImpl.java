package com.hotel.kg.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.hotel.kg.employee.dao.RumDao;
import com.hotel.kg.employee.dto.RumDto;

@Service("mngRumSvcImpl")
public class MngRumSvcImpl implements IMngRumSvc{

	@Autowired
	private RumDao  RumDao;

	
	@Override
	public String sltAll(Model model) {
		
		List<RumDto> list = RumDao.sltAll();

		model.addAttribute("CNT", list.size());
		model.addAttribute("LIST", list);

		return "RumManage";
	}
	
	@Transactional
	@Override
	public String chckt(Model model, String rum_no) {
		
		RumDto dto = RumDao.sltOne(rum_no);
		dto.setChkin_at("Y");
		
		RumDao.update(dto);

		
		
		return "redirect:rumSltAll";
	}
	
	@Transactional
	@Override
	public String chkin(Model model, String rum_no) {
		
		RumDto dto = RumDao.sltOne(rum_no);
		dto.setChkin_at("N");
		
		RumDao.update(dto);
		
		return "redirect:rumSltAll";
	}
	
	@Transactional
	@Override
	public String rumcheck(Model model, String rum_no) {
		
		RumDto dto = RumDao.sltOne(rum_no);
		dto.setChkin_posbl_at("N");
		
		RumDao.update(dto);
		
		return "redirect:rumSltAll";
	}
	@Transactional
	@Override
	public String rumcheckEnd(Model model, String rum_no) {
		
		RumDto dto = RumDao.sltOne(rum_no);
		dto.setChkin_posbl_at("Y");
		
		RumDao.update(dto);
		
		return "redirect:rumSltAll";
	}
	
}
