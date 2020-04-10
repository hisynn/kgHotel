package com.hotel.kg.resve.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotel.kg.member.controller.MemberController;
import com.hotel.kg.member.dto.MemberDTO;
import com.hotel.kg.resve.dto.OptnDTO;
import com.hotel.kg.resve.dto.ReserveFinal;
import com.hotel.kg.resve.dto.ReserveRoomDTO;
import com.hotel.kg.resve.service.IReserveService;

@Controller
@Repository("resveController")
public class ResveController {
	
	@Autowired
	IReserveService ReserveServiceImpl;
	
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	
	@RequestMapping(value = "reserveRoom")
	public String reserve(Model model, ReserveRoomDTO reserveDTO) {
		logger.info("=============== LOGIN CALLED ===============");
		System.out.println("에약룸 컨트롤러 도착");
		ReserveServiceImpl.sSltRoom(model, reserveDTO);
//		String chkin = reserveDTO.getChkin();
//		String chckt = reserveDTO.getChckt();
//		System.out.println("체크인 : "+chkin);
//		System.out.println("체크아웃 : "+chckt);
//		String a = "여기는 tab1 구간 입니다.";
//		String b = "여기는 tab2 구간 입니다.";
//		model.addAttribute("a", a);
//		model.addAttribute("b", b);
		 
		 
		
		return "reserveRoom";
	}
	
	@RequestMapping(value = "reserveOption")
	public String reserveOption(Model model, ReserveRoomDTO reserveDTO) {
		logger.info("=============== LOGIN CALLED ===============");
		System.out.println("에약룸 컨트롤러 도착");
		ReserveServiceImpl.sreserveOption(model, reserveDTO);
		String goods_no = reserveDTO.getGoods_no();
		System.out.println("상품번호"+goods_no);
		
		return "reserveOption";
	}
	
	@RequestMapping(value = "reserveOption2")
	public String reserveOption2(Model model, ReserveRoomDTO reserveDTO) {
		logger.info("=============== LOGIN CALLED ===============");
		System.out.println("예약룸2 컨트롤러 도착");
		System.out.println("옵션2 컨트롤러 price : "+reserveDTO.getPrice());
		ReserveServiceImpl.sreserveOption2(model, reserveDTO);
//		String chkin = reserveDTO.getChkin();
//		String chckt = reserveDTO.getChckt();
//		System.out.println("체크인 : "+chkin);
//		System.out.println("체크아웃 : "+chckt);
		
		
		
		return "reserveOption2";
	}

	@ResponseBody
	@RequestMapping(value = "reserveOption5", method=RequestMethod.POST)
	public ReserveRoomDTO reserveOption5(ReserveRoomDTO reserveDTO) {
		System.out.println("ajax 옵션5 컨트롤러 도착");
//		System.out.println("옵션5 컨트롤러 price : "+reserveDTO.getPrice());
//		int price= reserveDTO.getPrice();
//		String chkin =reserveDTO.getChkin();
//		String chckt = reserveDTO.getChckt();
//		
//		System.out.println("reserveOption 서비스 돈 :"+reserveDTO.getPrice());
//		System.out.println("reserveOption 서비스 체크인 :"+reserveDTO.getChkin());
//		System.out.println("reserveOption 서비스 체크아웃 : "+reserveDTO.getChckt());
//		
//		reserveDTO.setPrice(price);
//		reserveDTO.setChkin(chkin);
//		reserveDTO.setChckt(chckt);
		int aaa = reserveDTO.getAaa();
		int bbb = reserveDTO.getBbb();
		int ccc = reserveDTO.getCcc();
//		System.out.println("AAA : "+reserveDTO.getAaa());
//		System.out.println("BBB : "+reserveDTO.getBbb());
//		System.out.println("CCC : "+reserveDTO.getCcc());
		
		int price = reserveDTO.getPrice();
		String chkin 				= reserveDTO.getChkin();
		String chckt 				= reserveDTO.getChckt();
		int adult_nmpr	 			= reserveDTO.getAdult_nmpr();
		int child_nmpr 				= reserveDTO.getChild_nmpr();
		int rum_qy        			= reserveDTO.getRum_qy();
		String goods_no			= reserveDTO.getGoods_no();
		String request_matter 	= reserveDTO.getRequest_matter();
		reserveDTO.setAdult_nmpr(adult_nmpr); //성인 수
		reserveDTO.setChild_nmpr(child_nmpr);// 어린이 수
		reserveDTO.setRum_qy(rum_qy); //객실수량
		reserveDTO.setPrice(price); // 총액
		reserveDTO.setChkin(chkin); // 체크인
		reserveDTO.setChckt(chckt); // 체크아웃
		reserveDTO.setGoods_no(goods_no);
		reserveDTO.setRequest_matter(request_matter);
		reserveDTO.setAaa(aaa);
		reserveDTO.setBbb(bbb);
		reserveDTO.setCcc(ccc);
//		System.out.println("어른수 : "+reserveDTO.getAdult_nmpr());
//		System.out.println("어린이수 : "+reserveDTO.getChild_nmpr());
//		System.out.println("객실수량 : "+reserveDTO.getRum_qy());
//		System.out.println("총액 : "+reserveDTO.getPrice());
//		System.out.println("체크인 :"+reserveDTO.getChkin());
//		System.out.println("체크아웃 : "+reserveDTO.getChckt());
//		System.out.println("상품번호 : "+reserveDTO.getGoods_no());
//		System.out.println("요청사항 : "+reserveDTO.getRequest_matter());
//		System.out.println("AAA : "+reserveDTO.getAaa());
//		System.out.println("BBB : "+reserveDTO.getBbb());
//		System.out.println("CCC : "+reserveDTO.getCcc());
		return reserveDTO;
	}
	
	
	@RequestMapping(value = "MemberReserveFinal")
	public String reserveFinal(Model model, ReserveRoomDTO reserveDTO, HttpSession session, MemberDTO dto, ReserveFinal reserveFinalDTO, OptnDTO optnDTO) {
//	public String reserveFinal(MemberDTO dto) {
		logger.info("=============== LOGIN CALLED ===============");
		System.out.println("마무리 페이지 도착");
//		String chkin = reserveDTO.getChkin();
//		String chckt = reserveDTO.getChckt();
//		System.out.println("체크인 : "+chkin);
//		System.out.println("체크아웃 : "+chckt);
;	
		ReserveServiceImpl.reserveFinal(model, reserveDTO, dto, session, reserveFinalDTO, optnDTO);
//		String email = dto.getMbr_email();
//		int price = reserveDTO.getPrice();
//		String chkin 				= reserveDTO.getChkin();
//		String chckt 				= reserveDTO.getChckt();
//		int adult_nmpr	 			= reserveDTO.getAdult_nmpr();
//		int child_nmpr 				= reserveDTO.getChild_nmpr();
//		int rum_qy        			= reserveDTO.getRum_qy();
//		int nmpr_lmtt   			= reserveDTO.getNmpr_lmtt();
//		String goods_no			= reserveDTO.getGoods_no();
//		String request_matter 	= reserveDTO.getRequest_matter();
//		System.out.println("어른수 : "+reserveDTO.getAdult_nmpr());
//		System.out.println("어린이수 : "+reserveDTO.getChild_nmpr());
//		System.out.println("객실수량 : "+reserveDTO.getRum_qy());
//		System.out.println("총액 : "+reserveDTO.getPrice());
//		System.out.println("체크인 :"+reserveDTO.getChkin());
//		System.out.println("체크아웃 : "+reserveDTO.getChckt());
//		System.out.println("상품번호 : "+reserveDTO.getGoods_no());
//		System.out.println("요청사항 : "+reserveDTO.getRequest_matter());
//		
//		System.out.println(reserveDTO.getAaa());
//		System.out.println(reserveDTO.getBbb());
//		System.out.println(reserveDTO.getCcc());
//		String tel = dto.getMbr_tel();
//		String name = dto.getMbr_name();
		
//		System.out.println(email);
//		System.out.println(tel);
//		System.out.println(name);
		return "redirect:/main.jsp";
	}

	
	
//	컨트롤러 종료.
}
