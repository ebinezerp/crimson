package crimson.application.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import crimson.application.model.Order;
import crimson.application.repository.OrderRepository;
import crimson.application.util.Email;

@Controller
@RequestMapping("/admin")
public class AdminOrdersController {

	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	@Qualifier("orderDispatchEmail")
	private Email orderDispatchEmailService;
	
	@Autowired
	@Qualifier("orderDeliveryEmail")
	private Email orderDeliveryEmailService;

	@GetMapping("/dispatch/{id}")
	public String orderDispatch(@PathVariable("id") Long id, Model model,HttpServletRequest request) {
		Order order = orderRepository.getOne(id);
		order.setDispatchStatus(true);
		order.setDispatchedDate(new Date());
		orderRepository.save(order);
		orderDispatchEmailService.send(order.getUser().getEmail(), order.getOrderId().toString(), "http://"+request.getServerName()+":"+request.getServerPort());
		return "redirect:/orders";
	}

	@GetMapping("/deliver/{id}")
	public String orderDelivery(@PathVariable("id") Long id, Model model,HttpServletRequest request) {
		Order order = orderRepository.getOne(id);
		if (order.getDispatchStatus() == false) {
			return "redirect:/orders?deliveryStatus=false&dispatchStatus=false";
		}
		order.setDeliveryStatus(true);
		order.setDeliveryDate(new Date());
		orderRepository.save(order);
		orderDeliveryEmailService.send(order.getUser().getEmail(), order.getOrderId().toString(), "http://"+request.getServerName()+":"+request.getServerPort());
		return "redirect:/orders?deliveryStatus=true";
	}

}
