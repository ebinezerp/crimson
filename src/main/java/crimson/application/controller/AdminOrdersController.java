package crimson.application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crimson.application.dao.OrderRepository;
import crimson.application.model.Order;

@Controller
@RequestMapping("/admin")
public class AdminOrdersController {

	@Autowired
	private OrderRepository orderRepository;

	@GetMapping("/dispatch/{id}")
	public String orderDispatch(@PathVariable("id") Long id, Model model) {
		Order order = orderRepository.getOne(id);
		order.setDispatchStatus(true);
		orderRepository.save(order);
		return "redirect:/orders";
	}

	@GetMapping("/deliver/{id}")
	public String orderDelivery(@PathVariable("id") Long id, Model model) {
		Order order = orderRepository.getOne(id);
		if (order.getDispatchStatus() == false) {
			return "redirect:/orders?deliveryStatus=false&dispatchStatus=false";
		}
		order.setDeliveryStatus(true);
		orderRepository.save(order);
		return "redirect:/orders?deliveryStatus=true";
	}

}
