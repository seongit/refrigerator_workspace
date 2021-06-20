package com.refrigerator.member.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FindPwdController
 */
@WebServlet("/findPwd.member")
public class FindPwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			Properties prop = System.getProperties();
			prop.put("mail.smtp.starttls.enable", "true");
			prop.put("mail.smtp.host", "smtp.gmail.com");
			prop.put("mail.smtp.auth", "true");
			prop.put("mail.smtp.port", "587");

			Session session = Session.getDefaultInstance(prop, new Authenticator(){
			@Override
			public PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication("leeda51925@gmail.com", "Ekdms945**19");
			}
			});

			MimeMessage message = new MimeMessage(session);
			
			// 랜덤 인증번호 생성
			Random random = new Random();
	        int checkNum = random.nextInt(888888) + 111111;
	        String content = "비밀번호 재설정을 요청한 회원 확인을 위한 인증번호입니다."
   				 +  checkNum  + " 인증번호를 입력해주세요";
	        
			try {
				message.setSentDate(new Date());
				message.setFrom(new InternetAddress("leeda51925@gmail.com", "냉장고에 뭐 있지?"));
				message.setRecipient(Message.RecipientType.TO, new InternetAddress("leeda519@naver.com", "회원"));
				message.setSubject("인증번호입니다", "UTF-8");
				message.setText(content, "UTF-8");

				Transport.send(message);
				
			} catch(AddressException ae) {            
	            System.out.println("AddressException : " + ae.getMessage());           
	        } catch(MessagingException me) {            // 메일 계정인증 관련 예외 처리
	            System.out.println("MessagingException : " + me.getMessage());
	        } catch(UnsupportedEncodingException e) {	// 지원되지 않는 인코딩을 사용할 경우 예외 처리
	            System.out.println("UnsupportedEncodingException : " + e.getMessage());			
	        }
			
			request.getRequestDispatcher("views/member/findPwd.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
