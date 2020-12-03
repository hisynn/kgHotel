package com.hotel.kg.employee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.kg.employee.dao.IMngrDao;
import com.hotel.kg.employee.dto.MngrDto;

@Service
public class MngMyPageSvcImpl implements IMngMyPageSvc {

	@Autowired
	IMngrDao cDao;
	
	@Override
	public void update(MngrDto dto) throws Exception{
		
		MngrDto dto2 = cDao.selectOne(dto.getMngr_id());
		
		if(dto2 != null) {
			cDao.update(dto);
		} else {
			throw new Exception("업데이트 실패");
		}
	}

}
