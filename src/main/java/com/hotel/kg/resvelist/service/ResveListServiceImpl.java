package com.hotel.kg.resvelist.service;

import java.util.ArrayList;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.kg.member.dao.IMemberDAO;
import com.hotel.kg.member.dto.MemberDTO;
import com.hotel.kg.resvelist.dao.IResveListDAO;
import com.hotel.kg.resvelist.dto.ResveOptnDto;
import com.hotel.kg.resvelist.dto.ShowResveDto;

@Service
public class ResveListServiceImpl implements IResveListService {
	
	@Autowired
	IResveListDAO rDao;
	@Autowired
	IMemberDAO mDao;
	
	@Override
	public String resveSelect(String mbr_email, String mbr_name, String mbr_tel) {
		JSONObject json = new JSONObject();
		
		MemberDTO mDto = mDao.selectOne(mbr_email);
		
		if(mDto == null) {
			json.put("result", false);
			return json.toString();
		}
		
//		if(mbr_name.equals(mDto.getMbr_name()) && mbr_tel.equals(mDto.getMbr_tel() )) {
			
			ArrayList<ShowResveDto> resveList = rDao.resveSelect(mbr_email);
			
			if(resveList.size() == 0) {
				
				return json.toString();
			}
			
			for(int i=0; i<resveList.size(); i++) {
				
				ShowResveDto rDto = resveList.get(i);
				ArrayList<ResveOptnDto> optnList = rDao.resveOptnSelect(rDto);
				rDto.setResveOptnDto(optnList);
				
			}
			
			json.put("resveList", resveList);
//		}else {
			
//		}
		
	return json.toString();
	
	}

	@Override
	public String resveSelectMem(String mbr_email) {
		JSONObject json = new JSONObject();
		
		ArrayList<ShowResveDto> resveList = rDao.resveSelect(mbr_email);
		
		if(resveList.size() == 0) {
			
			return json.toString();
		}
		
		for(int i=0; i<resveList.size(); i++) {

			ShowResveDto rDto = resveList.get(i);
			ArrayList<ResveOptnDto> optnList = rDao.resveOptnSelect(rDto);
			rDto.setResveOptnDto(optnList);
			
		}
		
		json.put("resveList", resveList);
		
		return json.toString();
	}

}
