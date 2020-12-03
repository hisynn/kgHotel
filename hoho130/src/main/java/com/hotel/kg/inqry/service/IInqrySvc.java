package com.hotel.kg.inqry.service;

import org.json.JSONObject;

import com.hotel.kg.inqry.dto.InqryDto;

public interface IInqrySvc {
	public String inqryInsert(InqryDto dto);
	public JSONObject inqrySelect(String mbr_email, String page);
	public JSONObject inqrySelectOne(String date, String email);
}
