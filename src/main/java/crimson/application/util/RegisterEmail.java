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
	public boolean send(String toEmail,String content,String contextPath) {
		
		try {
		javaMailSender.send(new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper messageHelper=new MimeMessageHelper(mimeMessage,true);
				messageHelper.setTo(toEmail);
				messageHelper.setText("<img style='float:right' src='cid:myimage'>"
						+ "<div id=”mail”>\r\n" + 
						"<h1>Welcome to Crimson Trading<h1>\r\n" + 
						"\r\n" + 
						"<h5>Hi xxxxxx,</h5>\r\n" + 
						"\r\n" + 
						"<h3>Welcome to Crimson Trading!!!</h3>\r\n" + 
						" <p>Crimson products are shipped to worldwide markets including India, Singapore, Europe, USA, Middle East and Africa.</p>\r\n" + 
						"		\r\n" + 
						"\r\n" + 
						"<p>Happy Shopping… <h3We look forward to placing your first order soon. </h3></p>\r\n" + 
						"\r\n" + 
						"<h4>Regards</h4>\r\n" + 
						"<h5>Crimson Team</h5>\r\n" + 
						"\r\n" + 
						"</div>\r\n" + 
						"", true);
				messageHelper.addInline("myimage",new UrlResource(contextPath+"/resources/img/index/logo.png"));
				messageHelper.setSubject("Crimson Registration");		
			}
			
			
			
		});
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
		
	}
	

}
