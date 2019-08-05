package crimson.application.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crimson.application.model.Order;
import crimson.application.model.User;
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

	@GetMapping(value = { "/orders/{id}", "/orders" })
	public String orders(@RequestParam(name = "deliveryStatus", required = false) Boolean deliveryStatus,
			@RequestParam(name = "dispatchStatus", required = false) Boolean dispatchStatus,
			@PathVariable(name = "id", required = false) Long id, HttpSession session, Model model) {
		model.addAttribute("dispatchStatus", dispatchStatus);
		model.addAttribute("deliveryStatus", deliveryStatus);
		model.addAttribute("ordersmenu", "active");
		List<Order> orders = null;

		if (id != null) {
			orders = orderService.getOrders(userService.getUserById(id));
		} else {

			User user = ((User) (session.getAttribute("reg_user")));
			if (user.getRole().equalsIgnoreCase("ROLE_OWNER")) {
				orders = orderService.getOrders();
			}else {
				System.out.println("Admin Categories");
				orders = orderService.getOrdersByAdminCategory(user.getAdminDetails().getCategory().getCategoryId());
			}
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
