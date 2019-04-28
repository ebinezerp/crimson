package crimson.application.util;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

@Service("adminRegEmail")
public class AdminRegisterEmail implements Email {

	@Autowired
	JavaMailSender javaMailSender;

	@Override
	public void send(String to, String content, String contextPath) {

		javaMailSender.send(new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true);
				messageHelper.addTo(to);
				messageHelper.setSubject("Registered as Admin");
				messageHelper.setText(
						"<html><body><div><p>Email: " + to + "</p><p>Password: " + content + "</p></div></body></html>",
						true);
			}
		});
	}

}
