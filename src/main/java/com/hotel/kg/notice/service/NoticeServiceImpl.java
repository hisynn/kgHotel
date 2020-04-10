package com.hotel.kg.notice.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.hotel.kg.notice.dao.INoticeDAO;
import com.hotel.kg.notice.dto.NoticeDTO;
import com.hotel.kg.notice.dto.NoticeEtcDTO;


@Service
@Repository("NoticeService")
public class NoticeServiceImpl implements INoticeService {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeServiceImpl.class);
	
	@Autowired
	INoticeDAO dao;

	final int pageSize = 10;
	
//	공지사항 글 검색
	@SuppressWarnings("unused")
	@Override
	public String selectAll(Model model, NoticeEtcDTO EDto) {
		logger.info("notice진입");
		String pageNo = EDto.getPageNum();
		System.out.println("서비스시작===================================================================================================pageNum : "+EDto.getPageNum());
		
		int count = dao.CountAll();
		int lastPage = (count/10)+1;
		
//		System.out.println(count); // 카운트
		
		String next = "false";
		String btPre	= "flase";
		String btNext = "false";
		
		int nPageNo;
		
		if(pageNo == null) {
			nPageNo = 1;
			pageNo = "1";
//			System.out.println(pageNo);
		} else {
			nPageNo = Integer.parseInt(pageNo);
//			System.out.println(nPageNo);
		}
		
		int currentPage	= Integer.parseInt(pageNo);
		int start	    	= (currentPage - 1) * pageSize + 1; 
		int end = pageSize+1;
			
		System.out.println("currentPage : "+currentPage);
		System.out.println("start : "+start);
		System.out.println("end : "+end);
		
		int startPage=1;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		
		if (currentPage % 10 != 0) {
			startPage = (int) (currentPage / 10) * 10 + 1;
		} else { 
			startPage = ((int) (currentPage / 10) - 1) * 10 + 1;
		} 
		
		int pageBlock = 10;
		int endPage = startPage + pageBlock - 1; 
		
		if (endPage > pageCount)  
			endPage = pageCount;
		
		if (startPage > 10) { //이전버튼 만들기
//				btPre = "true";
				EDto.setPagePre(true);
		}
				
		if (endPage < pageCount) { // 다음버튼 만들기
//				btNext = "true";
				EDto.setPageNext(true);
		}
		
		EDto.setStart(start);
		EDto.setEnd(end);
		List<NoticeDTO> NOTICE = dao.selectAll(EDto);
		
		if(NOTICE.size() == end) {
			NOTICE.remove(pageSize);
			next = "true";
		} else {
			next = "false";
		}
		
		 
//		DTO에 담아
		EDto.setPageNum(pageNo);		// 현재 페이지
		EDto.setStartPage(startPage); // 시작 페이지
		EDto.setEndPage(endPage); 		// 공지사항 끝 페이지
		EDto.setCount(count); 			// 공지사항 총 갯수
		EDto.setNext(next);
		EDto.setLastPage(lastPage);
		System.out.println("서비스시작 후반===================================================================================================");
		System.out.println("pageNo : "+pageNo);
		System.out.println("startPage : "+startPage);
		System.out.println("endPage : "+endPage);
		System.out.println("count : "+count);
		System.out.println("next : "+next);
		System.out.println("start : "+start);
		System.out.println("end : "+end);
		System.out.println("NOTICE.size : "+NOTICE.size());
		System.out.println("lastPage : "+lastPage);
//		System.out.println("pageBtn : "+EDto.getPageBtn());
		

		

//		모델에 담아
		model.addAttribute("LIST",NOTICE);// 공지사항 리스트 
		model.addAttribute("EDto", EDto);
		return "notice2";
	}
//공지사항 글 검색 종료	
// 서비스 종료

	@Override
	public String selectDetail(NoticeEtcDTO EDto, NoticeDTO NDto, Model model) {

//		String pageNo = EDto.getPageNum();
//		String mngr_id 	= NDto.getMngr_id();
//		String rgsde 		= NDto.getRgsde();
		String pageNum 	= EDto.getPageNum();

		NDto = dao.selectOne(NDto);
		EDto.setPageNum(pageNum);
		
		int rdcnt = NDto.getRdcnt();
		NDto.setRdcnt(rdcnt+1);
		dao.noticeUpdate(NDto); // 조회수 업뎃

		
		System.out.println("===서비스 작업 완료===");
		System.out.println("id : "+NDto.getMngr_id());
		System.out.println("날짜 : "+NDto.getRgsde());
		System.out.println("제목 : "+NDto.getNotice_sj());
		
		
		
		
		
		// 모델에 담아.
		model.addAttribute("NDto", NDto);
		model.addAttribute("EDto", EDto);
		
		
		return "noticeDetail";
	}
	
		
	
	
	
	
	
	
	
	
	
	
	
	
}
