package crimson.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import crimson.application.model.Order;
import crimson.application.repository.OrderRepository;
import crimson.application.repository.UserRepository;
import crimson.application.service.OrderService;
import crimson.application.service.UserService;

@Controller
public class OrdersController {

	@Autowired
	private OrderService orderService;

	@Autowired
	private UserService userService;

	@GetMapping(value= {"/orders/{id}","/orders"})
	public String orders(@RequestParam(name = "deliveryStatus", required = false) Boolean deliveryStatus,
			@RequestParam(name = "dispatchStatus", required = false) Boolean dispatchStatus,
			@PathVariable(name = "id", required = false) Long id, Model model) {
		model.addAttribute("dispatchStatus", dispatchStatus);
		model.addAttribute("deliveryStatus", deliveryStatus);
		List<Order> orders = null;

		if (id != null) {
			orders = orderService.getOrders(userService.getUserById(id));
		} else {
			orders = orderService.getOrders();
		}

		model.addAttribute("orders", orders);
		return "orders";
	}

	@GetMapping("/order/{id}")
	private String billPage(@PathVariable("id") Long id, Model model) {
		Order order = orderService.get(id);
		model.addAttribute("order", order);
		return "order";
	}
}
