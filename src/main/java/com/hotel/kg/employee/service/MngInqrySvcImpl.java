package com.hotel.kg.employee.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.kg.employee.dao.IInqryMngDao;
import com.hotel.kg.employee.dao.IMngInqryDao;
import com.hotel.kg.employee.dto.InqryDto;

@Service
public class MngInqrySvcImpl implements IMngInqrySvc{

	@Autowired
	IMngInqryDao dao;
	@Autowired
	IInqryMngDao cDao;
	
	final int LISTCNT = 10;
	final int PAGECNT = 10;
	
	@Override
	public HashMap<String, Object> selectList(String selectOption, int pageNum) {
		int totalCnt = -1;
		ArrayList<InqryDto> list = null;
		
		if(selectOption.isEmpty()) {
			list = dao.selectList((pageNum - 1) * LISTCNT + 1, LISTCNT);
			totalCnt = dao.selectTotalCnt();
		} else {
			list = dao.selectListByThema((pageNum - 1) * LISTCNT + 1, LISTCNT, selectOption);
			totalCnt = dao.selectThemaCnt(selectOption);
		}
		
		ArrayList<String> themaList = dao.getThemaList();
		
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
		map.put("themaList", themaList);
		map.put("pageNum", pageNum);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("totalPage", totalPage);
		
		return map;
	}
	
	@Override
	public InqryDto selectOne(String email, String inqry_date) {
		InqryDto dto = cDao.selectOne(email, inqry_date);
		
		return dto;
	}
	
	@Override
	public void update(InqryDto dto) throws Exception{
		InqryDto dto2 = cDao.selectOne(dto.getMbr_email(), dto.getInqry_date());
		
		if(dto2 != null) {
			cDao.update(dto);
		} else {
			throw new Exception("글이 존재하지 않습니다.");
		}
	}

}
