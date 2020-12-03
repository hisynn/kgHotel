package com.hotel.kg.inqry.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.hotel.kg.inqry.dto.InqryDto;

public interface IInqryDao {
	public int inqryInsert(InqryDto dto);
	//public ArrayList<InqryDto> inqrySelect(String mbr_email);
	public ArrayList<InqryDto> inqrySelectAll(HashMap<String, Object> map);
	public InqryDto inqrySelectOne(InqryDto dto);
	
}
