package crimson.application.service;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

@Service("forgetemail")
public class ForgetEmailService implements EmailService {

	@Autowired
	private JavaMailSender javaMailSender;

	@Override
	public void send(String to, String content, String contextPath) {

		javaMailSender.send(new MimeMessagePreparator() {
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true);
				messageHelper.addTo(to);
				messageHelper.setSubject("Reset Password");
				messageHelper.setText("<p>Reset Password is below here.</p><div>" + content + "</div><p><a href='"
						+ contextPath + "/resetpassword?email="+to+"'>Click here to enter reset password</a></p>", true);
			}
		});
	}

}
