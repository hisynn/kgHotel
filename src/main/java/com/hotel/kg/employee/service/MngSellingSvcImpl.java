package com.hotel.kg.employee.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.hotel.kg.employee.dao.MngSellingDao;
import com.hotel.kg.employee.dto.SellingDto;

@Service("mngSellingSvcImpl")
public class MngSellingSvcImpl implements IMngSellingSvc{
	
	@Autowired
	MngSellingDao MngSellingDao; 

	@Override
	public String sellingSltDate(Model model, int pageNum, String category, String sDate, String eDate) {
		
		String startDate, endDate, showDate;
		int pageCount = 0, count =0, startPage= 1, endPage= 0;
		long totamt = 0;
		
		List<SellingDto> list = new ArrayList<SellingDto>();
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		int start 	= (pageNum - 1) * 10 + 1;
		
		startDate = dateChange(sDate);
		endDate = dateChange(eDate);

		params.put("startDate", startDate);
		params.put("endDate", endDate);
		params.put("start", start);

		if ("상품".equals(category))
		{
			
			count   = MngSellingDao.goodsSellingGetCount(params);

			pageCount = count / 10 + (count % 10 == 0 ? 0 : 1);

			if (pageNum % 10 != 0)
				startPage = (int) (pageNum / 10) * 10 + 1;
			else
				startPage = ((int) (pageNum / 10) - 1) * 10 + 1;

			int pageBlock = 10;

			endPage = startPage + pageBlock - 1;
			if (endPage > pageCount)
				endPage = pageCount;

			list = MngSellingDao.goodsSellingSltDate(params);
			for(int i = 0 ; i<list.size() ; i++) {
				SellingDto GDto = list.get(i);

				showDate = showDateChange(GDto.getChckt());
				GDto.setChckt(showDate);
			}
			if(list.size()!= 0) {
				totamt = MngSellingDao.goodsSellingSlt(params);
			}

			
		} else {
			
			count   = MngSellingDao.goodsSellingGetCount(params);

			pageCount = count / 10 + (count % 10 == 0 ? 0 : 1);

			if (pageNum % 10 != 0)
				startPage = (int) (pageNum / 10) * 10 + 1;
			else
				startPage = ((int) (pageNum / 10) - 1) * 10 + 1;

			int pageBlock = 10;

			endPage = startPage + pageBlock - 1;
			if (endPage > pageCount)
				endPage = pageCount;
			
			list = MngSellingDao.optnSellingSltDate(params);
			
			for(int i = 0 ; i<list.size() ; i++) {
				SellingDto GDto = list.get(i);
				
				showDate = showDateChange(GDto.getChckt());
				GDto.setChckt(showDate);
				
				if(list.size()!= 0) {
					totamt = MngSellingDao.optnSellingSlt(params);
				}
			
			}
			
		}
		
		model.addAttribute("LIST", list);
		model.addAttribute("COUNT", count);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("startDate", sDate);
		model.addAttribute("endDate", eDate);
		model.addAttribute("totamt", totamt);
		model.addAttribute("category", category);
		
		
		
		return "MngSelling";
	}
	
	public String dateChange(String showDate) {
		
		String date = showDate.substring(0, 4) + showDate.substring(5, 7)+ showDate.substring(8, 10);
		
		return date;
	}
	
	public String showDateChange(String date) {
		
		String show_date = date.substring(0, 4)+ "-" +date.substring(4, 6) + "-" + date.substring(6, 8);
		
		return show_date;
	}
	
	
	

}
