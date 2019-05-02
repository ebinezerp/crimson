package crimson.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import crimson.application.dao.OrderRepository;
import crimson.application.dao.UserRepository;
import crimson.application.model.Order;

@Controller
public class OrdersController {

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private UserRepository userRepository;

	@GetMapping(value= {"/orders/{id}","/orders"})
	public String orders(@RequestParam(name = "deliveryStatus", required = false) Boolean deliveryStatus,
			@RequestParam(name = "dispatchStatus", required = false) Boolean dispatchStatus,
			@PathVariable(name = "id", required = false) Long id, Model model) {
		model.addAttribute("dispatchStatus", dispatchStatus);
		model.addAttribute("deliveryStatus", deliveryStatus);
		List<Order> orders = null;

		if (id != null) {
			orders = orderRepository.findAllByUser(userRepository.getOne(id));
		} else {
			orders = orderRepository.findAll();
		}

		model.addAttribute("orders", orders);
		return "orders";
	}

	@GetMapping("/order/{id}")
	private String billPage(@PathVariable("id") Long id, Model model) {
		Order order = orderRepository.getOne(id);
		model.addAttribute("order", order);
		return "order";
	}
}
