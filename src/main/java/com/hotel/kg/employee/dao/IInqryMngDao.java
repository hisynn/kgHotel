package com.hotel.kg.employee.dao;

import org.apache.ibatis.annotations.Param;

import com.hotel.kg.employee.dto.InqryDto;

public interface IInqryMngDao {

	InqryDto selectOne(@Param("email") 		String email
					  ,@Param("inqry_date") String inqry_date);

	void update(InqryDto dto);

}
