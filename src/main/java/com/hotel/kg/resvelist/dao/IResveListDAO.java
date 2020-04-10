package com.hotel.kg.resvelist.dao;

import java.util.ArrayList;

import com.hotel.kg.resvelist.dto.ResveOptnDto;
import com.hotel.kg.resvelist.dto.ShowResveDto;

public interface IResveListDAO {
	public ArrayList<ShowResveDto> resveSelect(String mbr_email);
	public ArrayList<ResveOptnDto> resveOptnSelect(ShowResveDto resveOptnDto);
}
