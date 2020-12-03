package com.hotel.kg.inqry.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.kg.inqry.dao.IInqryDao;
import com.hotel.kg.inqry.dto.InqryDto;

@Service
public class InqrySvcImpl implements IInqrySvc{
	
	@Autowired
	IInqryDao dao;
	
	@Override
	public String inqryInsert(InqryDto dto) {
		String view = "redirect:/inqry.jsp";;
		dto.setMbr_email(dto.getMbr_email1() +"@"+ dto.getMbr_email2());
		
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmm"); 
		dto.setInqry_date(format.format(date));
		
		dto.setAnswer_at("N");
		dto.setDelete_at("N");
		
		int ret = dao.inqryInsert(dto);
		if(ret == 0) {
			
		}
		
		return view;
	}

	@Override
	public JSONObject inqrySelect(String mbr_email , String page) {
		
		JSONObject json = new JSONObject();
		
		if(page == null) {
			page = "1";
		}
		
		int pageNo = Integer.parseInt(page);
		int maxRow = 5;
		int start = (pageNo-1) * maxRow+1;
		int readCnt = maxRow+1;
				
		//ArrayList<InqryDto> list = dao.inqrySelect(mbr_email);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("readCnt", readCnt);
		map.put("mbr_email", mbr_email);
		
		ArrayList<InqryDto> list = dao.inqrySelectAll(map);
		System.out.println(list.size());
		if(list.size() == 0) {
			json.put("CHECK", false);
			json.put("NEXT", false);
			return json;
		}else {
			int listSize = list.size() % 5;
		}
		
		
//		JSONArray jArr = new JSONArray();
//		JSONObject temp = new JSONObject();
		
		json.put("CHECK", true);
		json.put("LIST", list);
//		for(int i=0; i<list.size(); i++) {
//			InqryDto dto = list.get(i);
//			temp.put("email", dto.getMbr_email());
//			temp.put("sj", dto.getInqry_sj());
//			temp.put("at", dto.getAnswer_at());
//			temp.put("date", dto.getInqry_date());
//			
//			jArr.put(temp);
//			System.out.println(jArr);
//		}
		System.out.println(json.toString());
		return json;
	}

	@Override
	public JSONObject inqrySelectOne(String inqry_date, String mbr_email) {
		
		System.out.println("service");
		JSONObject json = new JSONObject();
		
		InqryDto dto = new InqryDto();
		dto.setMbr_email(mbr_email);
		dto.setInqry_date(inqry_date);
		dto = dao.inqrySelectOne(dto);
		
		String[] email = dto.getMbr_email().split("@");
		
		json.put("mbr_email1", email[0]);
		json.put("mbr_email2", email[1]);
		json.put("inqry_date", dto.getInqry_date());
		json.put("inqry_thema", dto.getInqry_thema());
		json.put("inqry_ty", dto.getInqry_ty());
		json.put("inqry_sj", dto.getInqry_sj());
		json.put("inqry_cn", dto.getInqry_cn());
		json.put("answer_at", dto.getAnswer_at());
		json.put("answer_date", dto.getAnswer_date());
		
		if("N".equals(dto.getAnswer_at())) {
			json.put("answer_cn", "답변대기");
		}else {
			json.put("answer_cn", dto.getAnswer_cn());
		}
		
		return json;
	}
	
	
}
