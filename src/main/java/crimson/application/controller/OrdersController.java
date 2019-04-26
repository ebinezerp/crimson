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
public class OrdersController {

	@Autowired
	private OrderRepository orderRepository;

	@GetMapping("/orders")
	public String orders(@RequestParam(name = "deliveryStatus", required = false) Boolean deliveryStatus,
			@RequestParam(name="dispatchStatus",required=false)Boolean dispatchStatus, Model model) {
		model.addAttribute("dispatchStatus", dispatchStatus);
		model.addAttribute("deliveryStatus", deliveryStatus);
		model.addAttribute("orders", orderRepository.findAll());
		return "orders";
	}

	@GetMapping("/order/{id}")
	private String billPage(@PathVariable("id") Long id, Model model) {
		Order order = orderRepository.getOne(id);
		model.addAttribute("order", order);
		return "order";
	}

	@GetMapping("/dispatch/{id}")
	public String orderDispatch(@PathVariable("id") Long id, Model model) {
		Order order = orderRepository.getOne(id);
		order.setDispatchStatus(true);
		orderRepository.save(order);
		return "redirect:/admin/orders";
	}

	@GetMapping("/deliver/{id}")
	public String orderDelivery(@PathVariable("id") Long id, Model model) {
		Order order = orderRepository.getOne(id);
		if (order.getDispatchStatus() == false) {
			return "redirect:/admin/orders?deliveryStatus=false&dispatchStatus=false";
		}
		order.setDeliveryStatus(true);
		orderRepository.save(order);
		return "redirect:/admin/orders?deliveryStatus=true";
	}

}
