package com.hotel.kg.employee.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.hotel.kg.employee.dto.MbrDto;

public interface IMngMbrDao {

	int selectTotalCnt();
	int selectNameCnt(String name);
	ArrayList<MbrDto> selectList(@Param("rNum")   int rNum
							   , @Param("rowNum") int rowNum);
	
	ArrayList<MbrDto> selectListByName(@Param("rNum")   int rNum
	   							     , @Param("rowNum") int rowNum 
									 , @Param("name")   String name);

	ArrayList<MbrDto> selectListByEmail(String email);
	
}
