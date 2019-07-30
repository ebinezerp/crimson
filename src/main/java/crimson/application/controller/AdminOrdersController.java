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
import crimson.application.service.OrderService;
import crimson.application.util.Email;

@Controller
@RequestMapping("/admin")
public class AdminOrdersController {

	@Autowired
	private OrderService orderService;
	
	@Autowired
	@Qualifier("orderDispatchEmail")
	private Email orderDispatchEmailService;
	
	@Autowired
	@Qualifier("orderDeliveryEmail")
	private Email orderDeliveryEmailService;

	@GetMapping("/dispatch/{id}")
	public String orderDispatch(@PathVariable("id") Long id, Model model,HttpServletRequest request) {
		Order order = orderService.get(id);
		order.setDispatchStatus(true);
		order.setDispatchedDate(new Date());
		orderService.saveOrUpdate(order);
		orderDispatchEmailService.send(order.getUser().getEmail(), order.getOrderId().toString(), "http://"+request.getServerName()+":"+request.getServerPort());
		return "redirect:/orders";
	}

	@GetMapping("/deliver/{id}")
	public String orderDelivery(@PathVariable("id") Long id, Model model,HttpServletRequest request) {
		Order order = orderService.get(id);
		if (order.getDispatchStatus() == false) {
			return "redirect:/orders?deliveryStatus=false&dispatchStatus=false";
		}
		order.setDeliveryStatus(true);
		order.setDeliveryDate(new Date());
		orderService.saveOrUpdate(order);
		orderDeliveryEmailService.send(order.getUser().getEmail(), order.getOrderId().toString(), "http://"+request.getServerName()+":"+request.getServerPort());
		return "redirect:/orders?deliveryStatus=true";
	}
	
	
	@GetMapping("/paymentupdate/{id}")
	public String paymentUpdate(@PathVariable("id") Long id, Model model, HttpServletRequest request) {
		Order order = orderService.get(id);
		if (order.getDispatchStatus() == false || order.getDeliveryStatus() == false) {
			return "redirect:/orders?deliveryStatus=false&dispatchStatus=false";
		}
		order.setPaymentStatus(true);
		orderService.saveOrUpdate(order);
		return "redirect:/orders?deliveryStatus=true";
	}

}
