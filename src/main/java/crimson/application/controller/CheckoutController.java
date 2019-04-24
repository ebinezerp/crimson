package crimson.application.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import crimson.application.dao.CartRepository;
import crimson.application.dao.UserRepository;
import crimson.application.model.Cart;
import crimson.application.model.Order;
import crimson.application.model.OrderReciever;

@Controller
@RequestMapping("/user")
public class CheckoutController {
	
	@Autowired
	private CartRepository cartRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/checkout")
	public String checkoutPage(Model model,Principal principal) {
		model.addAttribute("orderReciever", new OrderReciever());
		model.addAttribute("cart",cartRepository.findCartByUser(userRepository.findUserByEmail(principal.getName())));
		return "checkout";
	}
	
	
	@PostMapping("/checkout")
	public String orderCheckout(@ModelAttribute("orderReciever")OrderReciever orderReciever,@ModelAttribute("cart")Cart cart,Model model,Principal principal) {
		return "billpage";
	}
	
	
	private void saveOrder(Cart cart,OrderReciever orderReciever) {
		Order order=new Order();
		order.setOrderReciever(orderReciever);
		order.setQuantity(cart.getQuantity());
		order.setTotalAmount(cart.getTotalAmount());
		order.setUser(cart.getUser());
	}
}
