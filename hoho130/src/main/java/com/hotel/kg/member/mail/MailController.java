//package com.hotel.kg.member.mail;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.context.annotation.AnnotationConfigApplicationContext;
//import org.springframework.context.support.AbstractApplicationContext;
//import org.springframework.stereotype.Controller;
//import org.springframework.stereotype.Repository;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.hotel.kg.member.controller.MemberController;
//import com.hotel.kg.member.dto.MemberDTO;
//
//
//@Controller
//@Repository("MailController")
//public class MailController {
//	
//	
//private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
//	@RequestMapping(value = "mail")
//	public MemberDTO sendEmail(Mail mail,MemberDTO dto) {
//		logger.info("=============== MAIL CONTROLLER CALLED ===============");
//		
//        mail.setMailFrom("jihooooo66@gmail.com");
//        mail.setMailTo("foeverqhsk@naver.com");
//        mail.setMailSubject("This is Email test.");
//        mail.setMailContent("Learn how to send email using Spring.");
// 
//        AbstractApplicationContext context = new AnnotationConfigApplicationContext(ApplicationConfig.class);
//        MailService mailService = (MailService) context.getBean("mailService");
//        mailService.sendEmail(mail);
//        context.close();
//		
//		
//	    return dto;
//	}
//	
//	
//
//}
