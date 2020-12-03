package com.hotel.kg.employee.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.hotel.kg.employee.dto.InqryDto;

public interface IMngInqryDao {

	ArrayList<InqryDto> selectListByThema(@Param("rNum")   int    rNum
			  							, @Param("rowNum") int    rowNum
			  							, @Param("thema")  String selectOption);

	ArrayList<InqryDto> selectList(@Param("rNum")   int rNum
		    					 , @Param("rowNum") int rowNum);

	int selectTotalCnt();

	int selectThemaCnt(String selectOption);

	ArrayList<String> getThemaList();

}
