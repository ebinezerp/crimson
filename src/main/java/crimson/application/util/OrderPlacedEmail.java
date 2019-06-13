package crimson.application.util;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import crimson.application.model.Order;
import crimson.application.repository.OrderItemRepository;
import crimson.application.repository.OrderRepository;
import freemarker.template.Configuration;
import freemarker.template.Template;

@Service("orderPlacedEmail")
public class OrderPlacedEmail implements Email {

	@Autowired
	private JavaMailSender javaMailSender;

	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private OrderItemRepository orderItemRepository;
	
	
	@Autowired
	private Configuration freemarkerConfig;
	
	@Value("${admin.email}")
	private String adminEmail;
	

	@Override
	public boolean send(String to, String orderId, String contextPath) {

		
		Order order = orderRepository.getOne(Long.valueOf(orderId));
		order.setOrderItems(orderItemRepository.findAllByOrder(order));
		
		String[] address=new String[] {
				to,adminEmail
		};
		
		javaMailSender.send(new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
				helper.setTo(address);
				helper.setSubject("Order Placed: " + orderId);
				Template template=freemarkerConfig.getTemplate("orderplaced.ftl");
				String body=FreeMarkerTemplateUtils.processTemplateIntoString(template, order);
				helper.setText(body, true);
			}
		});

		return true;
	}

}
