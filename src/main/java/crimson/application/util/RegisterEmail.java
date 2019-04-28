package crimson.application.util;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.UrlResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

@Service("regemail")
public class RegisterEmail implements Email {

	@Autowired
	private JavaMailSender javaMailSender;
	
	
	@Override
	public void send(String toEmail,String content,String contextPath) {
		javaMailSender.send(new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper messageHelper=new MimeMessageHelper(mimeMessage,true);
				messageHelper.setTo(toEmail);
				messageHelper.setText("This is my image <img src='cid:myimage'>", true);
				messageHelper.addInline("myimage",new UrlResource(contextPath+"/resources/img/index/logo.png"));
				messageHelper.setSubject("Crimson Registration");		
			}
			
			
			
		});
		
	}
	

}
