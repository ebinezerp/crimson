package crimson.application.controller;

import java.security.Principal;
import java.util.Date;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import crimson.application.model.Address;
import crimson.application.model.Cart;
import crimson.application.model.CartItem;
import crimson.application.model.Order;
import crimson.application.model.OrderItem;
import crimson.application.model.OrderReciever;
import crimson.application.repository.AddressRepository;
import crimson.application.repository.CartItemRepository;
import crimson.application.repository.CartRepository;
import crimson.application.repository.OrderItemRepository;
import crimson.application.repository.OrderRecieverRepository;
import crimson.application.repository.OrderRepository;
import crimson.application.repository.UserRepository;
import crimson.application.util.CartUtil;

@Controller
@RequestMapping("/user")
public class CheckoutController {

	@Autowired
	private CartRepository cartRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private CartItemRepository cartItemRepository;

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private OrderItemRepository orderItemRepository;

	@Autowired
	private OrderRecieverRepository orderRecieverRepository;

	@Autowired
	private AddressRepository addressRepository;

	@Autowired
	private CartUtil cartUtilService;

	@GetMapping("/checkout")
	public String checkoutPage(Model model, Principal principal) {
		model.addAttribute("orderReciever", new OrderReciever());
		model.addAttribute("cart", cartRepository.findCartByUser(userRepository.findUserByEmail(principal.getName())));
		return "checkout";
	}

	@PostMapping("/checkout")
	public String orderCheckout(@Valid @ModelAttribute("orderReciever") OrderReciever orderReciever, Errors errors,
			Model model, Principal principal, HttpSession session) {

		if (errors.hasErrors()) {
			return "checkout";
		}
		Cart cart = userRepository.findUserByEmail(principal.getName()).getCart();
		Order order = saveOrder(cart, orderReciever);
		Address address = orderReciever.getAddress();
		address.setOrderReciever(orderReciever);
		orderReciever.setAddress(null);
		orderRecieverRepository.save(orderReciever);
		addressRepository.save(address);
		cartUtilService.resetCart(cart);
		session.setAttribute("cart_count", 0);
		return "redirect:/user/bill/" + order.getOrderId();
	}

	@GetMapping("/bill/{id}")
	private String billPage(@PathVariable("id") Long id, Model model) {
		Order order = orderRepository.getOne(id);
		model.addAttribute("order", order);
		return "billpage";
	}

	private Order saveOrder(Cart cart, OrderReciever orderReciever) {
		Order order = new Order();
		order.setQuantity(cart.getQuantity());
		order.setTotalAmount(cart.getTotalAmount());
		order.setUser(cart.getUser());
		order.setDeliveryStatus(false);
		order.setDispatchStatus(false);
		order.setOrderedDate(new Date());
		orderRepository.save(order);
		orderReciever.setOrder(order);
		for (CartItem cartItem : cart.getCartItems()) {
			saveOrderItem(cartItem, order);
		}

		return order;
	}

	private void saveOrderItem(CartItem cartItem, Order order) {
		OrderItem orderItem = new OrderItem();
		orderItem.setOrder(order);
		orderItem.setProduct(cartItem.getProduct());
		orderItem.setQuantity(cartItem.getQuantity());
		orderItem.setTotalPrice(cartItem.getTotalPrice());
		orderItem.setUnitPrice(cartItem.getUnitPrice());
		orderItemRepository.save(orderItem);
	}
}
