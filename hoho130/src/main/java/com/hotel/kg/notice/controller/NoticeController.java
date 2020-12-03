package com.hotel.kg.notice.controller;


import org.slf4j.Logger;



import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.kg.notice.dto.NoticeDTO;
import com.hotel.kg.notice.dto.NoticeEtcDTO;
import com.hotel.kg.notice.service.INoticeService;

@Controller
@Repository("NoticeController")
public class NoticeController {

	@Autowired
	INoticeService NoticeService;
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@RequestMapping(value = "notice")
//	public String selectAll(@RequestParam(value="pageNum", defaultValue="1") int pageNum,
//			@RequestParam(value="count", defaultValue="0") int count, Model model) {
	public String selectAll(Model model, NoticeEtcDTO EDto) {
		System.out.println("=============== Notice SELECT ALL ===============");
		System.out.println(EDto.getPageNum());
		System.out.println("컨트롤러 ===================================================================================================");
		System.out.println("pageNo : "+EDto.getPageNum());
		System.out.println("startPage : "+EDto.getStartPage());
		System.out.println("endPage : "+EDto.getEndPage());
		System.out.println("count : "+EDto.getCount());
		System.out.println("next : "+EDto.getNext());
		System.out.println("start : "+EDto.getStart());
		System.out.println("end : "+EDto.getEnd());
		

		
		String Page = NoticeService.selectAll(model, EDto);
		
		return Page;
	}
	
	
	@RequestMapping(value="noticeDetail")
	public String noticeDedtail(NoticeEtcDTO EDto, NoticeDTO NDto, Model model) {
		logger.info("=============== NOTICE DETAIL ===============");
		System.out.println("관리자 아디 : "+NDto.getMngr_id());
		System.out.println("등록일자 : "+NDto.getRgsde());
		System.out.println("제목 : "+NDto.getNotice_sj());
		System.out.println("페이지번호 : "+EDto.getPageNum());
		
		String page = NoticeService.selectDetail(EDto, NDto, model);
		
		return page;
	}
// notice 컨트롤러 종료

}
