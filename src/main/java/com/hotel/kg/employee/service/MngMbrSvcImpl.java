package com.hotel.kg.employee.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.kg.employee.dao.IMbrDao;
import com.hotel.kg.employee.dao.IMngMbrDao;
import com.hotel.kg.employee.dto.MbrDto;
import com.hotel.kg.employee.dto.SelectDto;

@Service
public class MngMbrSvcImpl implements IMngMbrSvc{

	@Autowired
	IMngMbrDao dao;
	@Autowired
	IMbrDao cDao;
	
	final int LISTCNT = 10;
	final int PAGECNT = 10;
	
	@Override
	public HashMap<String, Object> selectList(SelectDto selectDTO, int pageNum) {
		int totalCnt = -1;
		String menu = selectDTO.getSelectOption();
		String input = selectDTO.getInputValue();
		ArrayList<MbrDto> list = null;
		
		if("selectId".equals(menu)) {
			list = dao.selectListByEmail(input);
			totalCnt = 1;
		} else if("selectName".equals(menu)) {
			list = dao.selectListByName((pageNum - 1) * LISTCNT + 1, LISTCNT, input);
			totalCnt = dao.selectNameCnt(input);
		} else {
			list = dao.selectList((pageNum - 1) * LISTCNT + 1, LISTCNT);
			totalCnt = dao.selectTotalCnt();
		}	
		
		int totalPage = totalCnt / LISTCNT;
		
		if(totalCnt % LISTCNT > 0) {
			totalPage++;
		}
		
		//url에서 임의로 page수를 바꿔서 총 페이지 수 보다 높은 페이지 접근 예방
		if(totalPage < pageNum) {
			pageNum = totalPage;
		}
		
		int startPage = ((pageNum - 1) / PAGECNT) * PAGECNT + 1;
		int endPage = startPage + PAGECNT - 1;
		
		//endPage 계산 시 총 페이지 수 보다 크게 잡힐 위험 예방 
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("list", list);
		map.put("pageNum", pageNum);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("totalPage", totalPage);
		
		return map;
		
	}

	public MbrDto selectOne(String mbr_email) {
		MbrDto dto = cDao.selectOne(mbr_email);
		
		return dto;
	}

	@Override
	public void update(MbrDto dto) throws Exception {
		
		MbrDto dto2 = cDao.selectOne(dto.getMbr_email());
		
		if(dto2 != null) {
			cDao.update(dto);
		} else {
			throw new Exception("데이터가 존재하지 않습니다.");
		}
		
	}

	
}
