package com.hotel.kg.resve.service;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.hotel.kg.member.dao.IMemberDAO;
import com.hotel.kg.member.dto.MemberDTO;
import com.hotel.kg.resve.dao.IReserveDAO;
import com.hotel.kg.resve.dto.GoodsDTO;
import com.hotel.kg.resve.dto.OptnDTO;
import com.hotel.kg.resve.dto.ReserveFinal;
import com.hotel.kg.resve.dto.ReserveRoomDTO;

@Service
@Repository("ReserveService")
public class ReserveServiceImpl implements IReserveService {
	
	@Autowired
	IReserveDAO reserveDAO;
	@Autowired
	IMemberDAO dao;

	@Override
	public String sSltRoom(Model model, ReserveRoomDTO reserveDTO) {
		System.out.println("에약룸 서비스 도착");
		System.out.println("CHKIN_POSBL_AT :"+reserveDTO.getChkin_posbl_at());
		System.out.println("NMPR_LMTT : "+reserveDTO.getNmpr_lmtt());
		System.out.println("RUM_BEDD_TY : "+reserveDTO.getRum_bedd_ty());
		System.out.println("RUMTY_NAME :"+reserveDTO.getRumty_name());
//		int Nmpr_lmtt = reserveDTO.getNmpr_lmtt();
		reserveDTO.setChkin_posbl_at("Y");
//		reserveDTO.setRum_bedd_ty("SINGLE");
//		int Nmpr_lmtt = reserveDTO.getNmpr_lmtt();
//		if(Nmpr_lmtt>4) 
//		{
//			Nmpr_lmtt=4;
//			reserveDTO.setNmpr_lmtt(4);
//		}		
		String chkin 		= reserveDTO.getChkin();
		String chckt 		= reserveDTO.getChckt();
		int child_nmpr 	= reserveDTO.getChild_nmpr();
		int rum_qy        	= reserveDTO.getRum_qy();
		int nmpr_lmtt   	= reserveDTO.getNmpr_lmtt();
		
		int count = 0;
		count = reserveDAO.sltCount(reserveDTO);		
		int goodsMemberCount = reserveDAO.sltGoodsCount();
		int sltGoodsPackageCount = reserveDAO.sltGoodsPackageCount();
		reserveDTO.setCount(count);
		reserveDTO.setGoodsMemberCount(goodsMemberCount);
		reserveDTO.setSltGoodsPackageCount(sltGoodsPackageCount);
		System.out.println("체크인 :"+reserveDTO.getChkin());
		System.out.println("체크아웃 : "+reserveDTO.getChckt());
		System.out.println("어른수 : "+reserveDTO.getAdult_nmpr());
		System.out.println("어른수2 : "+reserveDTO.getNmpr_lmtt());
		System.out.println("어린이수 : "+reserveDTO.getChild_nmpr());
		System.out.println("객실수량 : "+reserveDTO.getRum_qy());
		
		reserveDTO.setChkin(chkin); 
		reserveDTO.setChckt(chckt);
		reserveDTO.setAdult_nmpr(nmpr_lmtt);
		reserveDTO.setChild_nmpr(child_nmpr);
		reserveDTO.setRum_qy(rum_qy);
		System.out.println("체크인 :"+reserveDTO.getChkin());
		System.out.println("체크아웃 : "+reserveDTO.getChckt());
		System.out.println("어른수 : "+reserveDTO.getAdult_nmpr());
		System.out.println("어른수2 : "+reserveDTO.getNmpr_lmtt());
		System.out.println("어린이수 : "+reserveDTO.getChild_nmpr());
		System.out.println("객실수량 : "+reserveDTO.getRum_qy());
//		List<ReserveRoomDTO> sltSingle = reserveDAO.sltSingle(Nmpr_lmtt);
//		for(int i=0; i<sltSingle.size(); i++) {
//			System.out.println("sltSingle 리스트의 값 : "+sltSingle.get(i).getRumty_name());			
//		}
//		List<ReserveRoomDTO> sltTwin = reserveDAO.sltTwin(Nmpr_lmtt);
//		for(int i=0; i<sltTwin.size(); i++) {
//			System.out.println("sltTwin 리스트의 값 : "+sltTwin.get(i).getRumty_name());			
//		}
//		
//		List<ReserveRoomDTO> sltAll = reserveDAO.sltAll(Nmpr_lmtt);
//		for(int i=0; i<sltAll.size(); i++) {
//			System.out.println("가능침대 리스트의 값 : "+sltAll.get(i).getRumty_name());			
//		}
		 
		int Nmpr_lmtt = reserveDTO.getNmpr_lmtt();
		List<ReserveRoomDTO> sltAll = reserveDAO.sltAll(Nmpr_lmtt);
		List<ReserveRoomDTO> roomList = reserveDAO.sltRoom(reserveDTO);
		List<GoodsDTO> goodsMemberList = reserveDAO.sltGoodsMember();
		List<GoodsDTO> sltGoodsPackageList = reserveDAO.sltGoodsPackage();
		System.out.println("에약룸 서비스 DAO 실행");
/*		for(int i=0; i<roomList.size();i++)
		{			
			if(roomList.get(i).getRum_bedd_ty().equals("SINGLE")) 
			{
				System.out.print("싱글  "+(i+1)+" 번째");
				System.out.print("  "+roomList.get(i).getRumty_name()+", ");
				System.out.print("  "+roomList.get(i).getRum_bedd_ty()+", ");
//				System.out.print(roomList.get(i).getChkin_posbl_at()+", ");
//				System.out.print(roomList.get(i).getNmpr_lmtt()+", ");
//				System.out.print(roomList.get(i).getRum_pc()+", ");
//				System.out.print(roomList.get(i).getRum_totar()+", ");
				System.out.print("  "+roomList.get(i).getRum_image_url()+", ");
//				System.out.print(roomList.get(i).getRum_name()+", ");
				System.out.println();
			}
			if(roomList.get(i).getRum_bedd_ty().equals("TWIN")) 
			{
				System.out.print("트윈  "+(i+1)+" 번째");
				System.out.print("  "+roomList.get(i).getRumty_name()+", ");
				System.out.print("  "+roomList.get(i).getRum_bedd_ty()+", ");
//				System.out.print(roomList.get(i).getChkin_posbl_at()+", ");
//				System.out.print(roomList.get(i).getNmpr_lmtt()+", ");
//				System.out.print(roomList.get(i).getRum_pc()+", ");
//				System.out.print(roomList.get(i).getRum_totar()+", ");
				System.out.print("  "+roomList.get(i).getRum_image_url()+", ");
//				System.out.print(roomList.get(i).getRum_name()+", ");
				System.out.println();
			}

	}
			*/
			
			
			
			
			
			
			
			
			
			
			
		
		
		
		
		
		
//		model.addAttribute("sltSingle",sltSingle);
		model.addAttribute("sltAll",sltAll);
		model.addAttribute("reserveDTO",reserveDTO);
		model.addAttribute("roomList",roomList);
		model.addAttribute("goodsMemberList", goodsMemberList);
		model.addAttribute("sltGoodsPackageList", sltGoodsPackageList);
		
//		model.addAttribute("COUNT",count);
//		model.addAttribute("goodsMemberCount",goodsMemberCount);
//		model.addAttribute("goodsMemberCount",sltGoodsPackageCount);
		
		return "reserveRoom";
	}

	@Override
	public String sreserveOption(Model model, ReserveRoomDTO reserveDTO) {
		// TODO Auto-generated method stub
		int price = reserveDTO.getPrice();
		String chkin 		= reserveDTO.getChkin();
		String chckt 		= reserveDTO.getChckt();
		int adult_nmpr 	= reserveDTO.getAdult_nmpr();
		int child_nmpr 	= reserveDTO.getChild_nmpr();
		int rum_qy        	= reserveDTO.getRum_qy();
		int nmpr_lmtt   	= reserveDTO.getNmpr_lmtt();
		String goods_no	= reserveDTO.getGoods_no();
		
		reserveDTO.setAdult_nmpr(adult_nmpr); //성인 수
		reserveDTO.setChild_nmpr(child_nmpr);// 어린이 수
		reserveDTO.setRum_qy(rum_qy); //객실수량
		reserveDTO.setPrice(price); // 총액
		reserveDTO.setChkin(chkin); // 체크인
		reserveDTO.setChckt(chckt); // 체크아웃
		reserveDTO.setGoods_no(goods_no);
		System.out.println("어른수 : "+reserveDTO.getAdult_nmpr());
		System.out.println("어린이수 : "+reserveDTO.getChild_nmpr());
		System.out.println("객실수량 : "+reserveDTO.getRum_qy());
		System.out.println("총액 : "+reserveDTO.getPrice());
		System.out.println("체크인 :"+reserveDTO.getChkin());
		System.out.println("체크아웃 : "+reserveDTO.getChckt());
		System.out.println("상품번호 : "+reserveDTO.getGoods_no());
//		System.out.println("어른수2 : "+reserveDTO.getNmpr_lmtt());
		

		
		model.addAttribute("reserveDTO",reserveDTO);
		return "sreserveOption";
	}

	@Override
	public String sreserveOption2(Model model, ReserveRoomDTO reserveDTO) {
		// TODO Auto-generated method stub
		int price = reserveDTO.getPrice();
		String chkin 				= reserveDTO.getChkin();
		String chckt 				= reserveDTO.getChckt();
		int adult_nmpr	 			= reserveDTO.getAdult_nmpr();
		int child_nmpr 				= reserveDTO.getChild_nmpr();
		int rum_qy        			= reserveDTO.getRum_qy();
		int nmpr_lmtt   			= reserveDTO.getNmpr_lmtt();
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
//		System.out.println("어른수 : "+reserveDTO.getAdult_nmpr());
//		System.out.println("어린이수 : "+reserveDTO.getChild_nmpr());
//		System.out.println("객실수량 : "+reserveDTO.getRum_qy());
//		System.out.println("총액 : "+reserveDTO.getPrice());
//		System.out.println("체크인 :"+reserveDTO.getChkin());
//		System.out.println("체크아웃 : "+reserveDTO.getChckt());
//		System.out.println("상품번호 : "+reserveDTO.getGoods_no());
//		System.out.println("요청사항 : "+reserveDTO.getRequest_matter());
		
		
		reserveDTO.setPrice(price);
		System.out.println(price);
		reserveDTO.setChkin(chkin);
		reserveDTO.setChckt(chckt);
		model.addAttribute("reserveDTO",reserveDTO);
		return "sreserveOption2";
	}

	@Transactional
	@Override
	public String reserveFinal(Model model, ReserveRoomDTO reserveDTO, MemberDTO dto, HttpSession session, ReserveFinal resultFinalDTO, OptnDTO optnDTO) {
		String email = dto.getMbr_email();
		int price = reserveDTO.getPrice();
		int resve_totamt = price;
		String chkin 				= reserveDTO.getChkin();
		String chckt 				= reserveDTO.getChckt();
		int adult_nmpr	 			= reserveDTO.getAdult_nmpr();
		int child_nmpr 				= reserveDTO.getChild_nmpr();
		int rum_qy        			= reserveDTO.getRum_qy();
		int nmpr_lmtt   			= reserveDTO.getNmpr_lmtt();
		String goods_no			= reserveDTO.getGoods_no();
		String request_matter 	= reserveDTO.getRequest_matter();
		String requst_matter = request_matter;
		int aaa = reserveDTO.getAaa();
		int bbb = reserveDTO.getBbb();
		int ccc = reserveDTO.getCcc();
		
		
		
		// 1 이메일
//		dto = (MemberDTO) session.getAttribute("dto");
//		String email = dto.getMbr_email();
//		System.out.println("세션DTO에 들어있는 값 :"+email);
//		MemberDTO dto2 = new MemberDTO();
//		dto2 = dao.selectOne(email);
//		
//		if(dto2!=null) {
//			return "redirect:/login.jsp";
//		}
		
//		여기서부터 살리시오.
		
		//2 날짜
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyyMMddHHmm");
		String resve_date = format1.format (System.currentTimeMillis());
		System.out.println(resve_date);
//		
//		//3 상품번호
//		String goods_no = reserveDTO.getGoods_no();
//		goodsDTO = reserveDAO.sltOneGoods(goodsDTO);
//		
//		
//		//4
//		String chkin = reserveDTO.getChkin();
//		String chckt = reserveDTO.getChckt();
//		int adult_nmpr  = reserveDTO.getAdult_nmpr();
//		int child_nmpr  =reserveDTO.getChild_nmpr();
//		int rum_qy =  reserveDTO.getRum_qy();
//		String request_matter = reserveDTO.getRequest_matter();
//		String requst_matter = request_matter;
//		int resve_totamt = reserveDTO.getPrice();
//		System.out.println("체크인 : "+chkin);
//		System.out.println("체크인 : "+chckt);
//		System.out.println("어른수 : "+adult_nmpr);
//		System.out.println("어린이수 : "+child_nmpr);
//		System.out.println("객실수량 : "+rum_qy);
//		System.out.println("요청사항 : "+request_matter);
//		System.out.println("예약총액 : "+resve_totamt);
//		
//		//4.5
		String resve_delete_at = "N";
			
		//Final
		dto.setMbr_pw("a123lj45asdf76");
		dto.setMbr_brthdy("temp");
		dto.setMbr_grad("T");
		dto.setMbr_nlty("T");
		dto.setMbr_sexdstnr("T");
		dto.setAct_at("T");
		dto.setSrbde("T");
		dto.setMbr_point(0);
		dao.insert(dto);
		System.out.println("임시회원 등록");
		
		
		resultFinalDTO.setMbr_email(email);
		resultFinalDTO.setResve_date(resve_date);
		resultFinalDTO.setGoods_no(goods_no);
		resultFinalDTO.setChkin(chkin);
		resultFinalDTO.setChckt(chckt);
		resultFinalDTO.setAdult_nmpr(adult_nmpr);
		resultFinalDTO.setChild_nmpr(child_nmpr);
		resultFinalDTO.setRum_qy(rum_qy);
		resultFinalDTO.setRequst_matter(requst_matter);
		resultFinalDTO.setResve_totamt(resve_totamt);
		resultFinalDTO.setResve_delete_at(resve_delete_at);
		reserveDAO.reserveInsert(resultFinalDTO);
		System.out.println("에약 insert 완료");
		
		optnDTO.setMbr_email(email);
		optnDTO.setResve_date(resve_date);
		optnDTO.setOptn_no("01");
		optnDTO.setOptn_qy(aaa);
		reserveDAO.insertOptn(optnDTO);
		System.out.println("옵션1 insert 완료");
		
		optnDTO.setMbr_email(email);
		optnDTO.setResve_date(resve_date);
		optnDTO.setOptn_qy(bbb);
		optnDTO.setOptn_no("02");
		reserveDAO.insertOptn(optnDTO);
		System.out.println("옵션2 insert 완료");
		
		optnDTO.setMbr_email(email);
		optnDTO.setResve_date(resve_date);
		optnDTO.setOptn_qy(ccc);
		optnDTO.setOptn_no("03");
		reserveDAO.insertOptn(optnDTO);
		System.out.println("옵션3 insert 완료");
		
		
		return "redirect:/main.jsp";
	}


}
