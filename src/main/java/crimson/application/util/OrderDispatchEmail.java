
package crimson.application.util;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import crimson.application.model.Address;
import crimson.application.model.Order;
import crimson.application.repository.OrderRepository;

@Service("orderDispatchEmail")
public class OrderDispatchEmail implements Email {

	@Autowired
	private JavaMailSender javaMailSender;

	@Autowired
	private OrderRepository orderRepository;

	@Override
	public boolean send(String to, String orderId, String contextPath) {
		try {

			Order order = orderRepository.getOne(Long.valueOf(orderId));
			Address address = order.getOrderAddress();

			javaMailSender.send(new MimeMessagePreparator() {

				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
					MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true);
					messageHelper.setTo(to);
					messageHelper.setSubject("Order Dispatched: " + orderId);
					messageHelper.setText("<div>" + "<p>Hii " + order.getUser().getUsername() + "</p>"
							+ "<br><p>We thought you'd like to know that we've dispatched your item(s). Your order is on the way</p>"
							+ "<br><div><p>Delivery Address</p><address>" + "<p>" + address.getStreet() + "</p>" + "<p>"
							+ address.getDoorNo() + "</p>" + "<p>" + address.getCity() + "</p>" + "<p>"
							+ address.getCountry() + "</p>" + "<p>" + address.getCode() + "</p>" + "</address></div>"
							+ "</div>", true);

				}
			});
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;

	}

}
