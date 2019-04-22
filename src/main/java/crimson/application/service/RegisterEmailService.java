package crimson.application.service;

import java.io.File;
import java.net.URI;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.UrlResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

@Service("regemail")
public class RegisterEmailService implements EmailService {

	@Autowired
	private JavaMailSender javaMailSender;
	
	
	@Override
	public void send(String to,String content,String contextPath) {
		
		to="ebinezeraws@gmail.com";
		System.out.println("contextPath:...."+contextPath);
		
		javaMailSender.send(new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper messageHelper=new MimeMessageHelper(mimeMessage,true);
				messageHelper.setTo("ebinezeraws@gmail.com");
				messageHelper.setText("This is my image <img src='cid:myimage'>", true);
				messageHelper.addInline("myimage",new UrlResource(contextPath+"/resources/img/index/logo.png"));
				messageHelper.setSubject("Crimson Registration");		
			}
			
			
			
		});
		
	}
	

}
