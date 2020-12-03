package com.hotel.kg.employee.dao;

import java.util.HashMap;
import java.util.List;

import com.hotel.kg.employee.dto.ResveDto;
import com.hotel.kg.employee.dto.ShowOptnDto;
import com.hotel.kg.employee.dto.ShowResveDto;

public interface MngResveDao {

	List<ShowOptnDto> sltOptn(ResveDto dto);
	List<ShowResveDto> resveSltMulti(int start);
	List<ShowResveDto> resveNameSlt(HashMap<String, Object> hm);
	List<ShowResveDto> resveEmailSlt(HashMap<String, Object> hm);
	ShowResveDto resveSltOne(ResveDto dto);
	int resveGetCount();
	int nameGetCount(String name);
	int emailGetCount(String name);
	
	

}
