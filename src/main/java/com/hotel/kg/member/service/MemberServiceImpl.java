package com.hotel.kg.member.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.kg.employee.dao.IMngrDao;
import com.hotel.kg.employee.dto.MngrDto;
import com.hotel.kg.member.dao.IMemberDAO;
import com.hotel.kg.member.dao.IMemberHistDAO;
import com.hotel.kg.member.dto.MemberDTO;
import com.hotel.kg.member.dto.MemberHistDTO;
import com.hotel.kg.member.mail.ApplicationConfig;
import com.hotel.kg.member.mail.Mail;
import com.hotel.kg.member.mail.MailService;

@Service
@Repository("MemberService")
public class MemberServiceImpl implements IMemberService {

	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	@Autowired
	IMemberDAO dao;
	
	@Autowired
	IMemberHistDAO histDao;

	@Autowired
	IMngrDao mngrDao;
//로그인 체크 시작---------------------------------------------------------------
	@Override
	public String LoginCheck(MemberDTO dto, HttpSession session) {
		MngrDto mngrDto  = null;
		String mbr_email = dto.getMbr_email();
		String mbr_pw = dto.getMbr_pw();
		String dbemail = "";
		String dbPw = "";
		MemberDTO mDto = dao.selectOne(mbr_email);
		
		if(mDto == null) {
			mngrDto = mngrDao.selectOne(dto.getMbr_email());
		} else {
			dbemail = mDto.getMbr_email();
			dbPw = mDto.getMbr_pw();
		}
		
		System.out.println(dbemail);
		System.out.println(dbPw);
		
		if(mbr_email.equals(dbemail) && mbr_pw.equals(dbPw)) {
			String[] email = dto.getMbr_email().split("@");
			session.setAttribute("email", dto.getMbr_email());
			session.setAttribute("email1", email[0]);
			session.setAttribute("email2", email[1]);
			session.setAttribute("LOGIN", true);
			
			return "redirect:/main.jsp";
		} else if(mbr_email.equals(mngrDto.getMngr_id()) && mbr_pw.equals(mngrDto.getMngr_pw())) {
			session.setAttribute("dto", mngrDto);
			return "redirect:/adminMain.jsp";
		}
		else {
			session.setAttribute("LOGIN", false);
			return "loginFail";
		}		
	}
//insert 시작-------------------------------------------------------------------	
	@Transactional
	@Override
	public String insert(MemberDTO dto) {
		
		logger.info("Insert진입");
		
		String email = dto.getMbr_email();
		
		MemberDTO dto2 = dao.selectOne(email);
		
		if(dto2!=null) {
			return "duplicationpw";
		}
		
		Date date = new Date();
		SimpleDateFormat format1;
		SimpleDateFormat format2;
		
		format1 = new SimpleDateFormat("yyyyMMdd");		
		format2 = new SimpleDateFormat("yyyyMMdd-HH:mm");
		
		
		dto.setMbr_grad("1");
		dto.setAct_at("Y");
		dto.setSrbde(format1.format(date));
		dto.setMbr_point(0);

		dao.insert(dto);
		
		// parameter Hdto
		MemberHistDTO HDto = new MemberHistDTO();
		HDto.setMbr_date(format2.format(date));
		HDto.setMbr_contents("INSERT " +dto.toString());
		
		histDao.Histinsert(HDto);
		
//		String mbr_contents = dto.toString();
//		histDao.Histinsert(format1.format(date), "INSERT " +dto.toString());
//		histDao.Histinsert(mbr_date, mbr_contents);
//		histDao.insert("abcd", "INSERT ");
		
		
		
		return "redirect:/main.jsp";
	}
//update 시작-------------------------------------------------------------------	
	@Transactional
	@Override
	public String update(MemberDTO dto) {
		
		dao.update(dto);
		
		
		
		
		
		return "redirect:/myPage.jsp";
	}
// delete 시작-------------------------------------------------------------------
	@Override
	@Transactional
	public String delete(String email) {
		return null;
	}
// selectOne 시작
	@Override
	public int selectOne(MemberDTO dto) {
		
		int result = 0;
		String email = dto.getMbr_email();
		dto = dao.selectOne(email);
		
		if(dto!=null) {
		result = 1;
		}
		return result;
	}
// checkPw 시작	
	@Override
	public int checkPw(MemberDTO dto) 
	{
		int result=0;
		
		String mbr_pw = dto.getMbr_pw();
		String email = dto.getMbr_email();
		dto = dao.selectOne(email);
				
		String db_pw = dto.getMbr_pw();
		
		if(mbr_pw.equals(db_pw)) {
			result = 1;
			return result;
		}		
		return result;
	}
//	 PW UPDATE
	@Override
	@Transactional
	public String updatePW(MemberDTO dto, HttpSession session) {
		
		System.out.println("서비스 도착");
		System.out.println("입력되어 도착한 비밀번호 : "+dto.getMbr_pw());
		System.out.println("입력되어 도착한 이메일 : "+dto.getMbr_email());
		
		String pw = dto.getMbr_pw();		
		dto = (MemberDTO) session.getAttribute("dto");
		dto.setMbr_pw(pw);
		dao.PWupdate(dto);
		System.out.println("비번업데이트 완료");
		
		
		
		
		return "redirect:/myPage.jsp";
	}
//	updatePw END.
	
	@Override
	public boolean searchId(MemberDTO dto) {
		// TODO Auto-generated method stub
//		String mbr_name = dto.getMbr_name();
//		String mbr_brthdy = dto.getMbr_brthdy();
//		String mbr_tel = dto.getMbr_tel();
		boolean result=false;
		String db_mbr_email =  dao.searchID(dto);
		System.out.println("서비스 db_mbr_email : "+db_mbr_email);
		if(db_mbr_email != null) 
		{
			System.out.println("if안 : "+db_mbr_email);
			dto.setMbr_email(db_mbr_email);
			result = true;
			return result;
		}
		System.out.println("if밖 : "+db_mbr_email);
		
		return result;
	}
//	searchId 종료
	@Transactional
	@SuppressWarnings("null")
	@Override
	public boolean searchPw(MemberDTO dto, Mail mail) {
		// TODO Auto-generated method stub
		
		boolean result = false;
		
		String input_email = dto.getMbr_email();
		String input_name = dto.getMbr_name();
		String input_tel = dto.getMbr_tel();
		System.out.println(input_email);
		System.out.println(input_name);
		System.out.println(input_tel);
		
		dto = dao.searchPw(dto);
		
		if(dto!=null) 
		{
			Random rnd =new Random();
			StringBuffer buf =new StringBuffer();

			for(int i=0;i<13;i++){
			    // rnd.nextBoolean() 는 랜덤으로 true, false 를 리턴. true일 시 랜덤 한 소문자를, false 일 시 랜덤 한 숫자를 StringBuffer 에 append 한다.
				if(rnd.nextBoolean()){
			        buf.append((char)((int)(rnd.nextInt(26))+97));
			    }else{
			        buf.append((rnd.nextInt(10)));
			    }
			}
			String abc = buf.toString();
			System.out.println(abc);
			dto.setMbr_pw(abc);
			dao.PWupdate(dto);
			
			mail.setMailFrom("jihooooo66@gmail.com");
		    mail.setMailTo("foeverqhsk@naver.com");
		    mail.setMailSubject("HOTEL 임시번호 발급 E-MAIL입니다.");
		    mail.setMailContent("귀하의 임시비밀 번호는 : "+abc+"  입니다.");
		    
	        AbstractApplicationContext context = new AnnotationConfigApplicationContext(ApplicationConfig.class);
	        MailService mailService = (MailService) context.getBean("mailService");
	        mailService.sendEmail(mail);
	        context.close();
			return true;
		}
		
		if(dto.getMbr_email()==null) {
			return false;
		}
		
		String db_mbr_email = dto.getMbr_email();
		System.out.println("DB EMAIL : "+db_mbr_email);
		
		return result;
	}
//	searchPw 종료
	
	@Transactional
	@Override
	public MemberDTO logUpdatePW(MemberDTO dto) {
		
		String input_email = dto.getMbr_email();
		String input_password = dto.getPassword();
		String input_mbr_pw = dto.getMbr_pw();
		System.out.println("Input Email : "+input_email);
		System.out.println("input_password : "+input_password);
		System.out.println("input_mbr_pw  : "+input_mbr_pw);
		
		dto = dao.selectOne(input_email);
		
		String db_email = dto.getMbr_email();
		String db_mbr_pw = dto.getMbr_pw();
		
		if(input_email.equals(db_email) && input_mbr_pw.equals(db_mbr_pw)) {
			dto.setMbr_pw(input_password);
			dao.PWupdate(dto);
		}
		
		System.out.println("Input Email : "+db_email);
		System.out.println("input_password : "+db_mbr_pw);
		
		return dto;
	}
	
	
	

//	서비스 종료-------------------------------------------------------------------
}