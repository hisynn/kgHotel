package com.hotel.kg.employee.service;

import java.util.HashMap;

import com.hotel.kg.employee.dto.MbrDto;
import com.hotel.kg.employee.dto.SelectDto;

public interface IMngMbrSvc {
	
	HashMap<String, Object> selectList(SelectDto selectDTO, int pageNum);
	MbrDto selectOne(String mbr_email);
	void update(MbrDto dto) throws Exception;
}
