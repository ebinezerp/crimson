package crimson.application.controller;

import java.security.Principal;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
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
import crimson.application.model.User;
import crimson.application.repository.AddressRepository;
import crimson.application.repository.OrderRecieverRepository;
import crimson.application.service.AddressService;
import crimson.application.service.CartService;
import crimson.application.service.OrderItemService;
import crimson.application.service.OrderRecieverService;
import crimson.application.service.OrderService;
import crimson.application.util.CartUtil;
import crimson.application.util.OrderPlacedEmail;

@Controller
@RequestMapping("/user")
public class CheckoutController {

	@Autowired
	private CartService cartService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private OrderItemService orderItemService;

	@Autowired
	private OrderRecieverService orderRecieverService;

	@Autowired
	private AddressService addressService;

	@Autowired
	private CartUtil cartUtilService;

	@Autowired
	@Qualifier("orderPlacedEmail")
	private OrderPlacedEmail orderPlacedEmail;

	@GetMapping("/checkout")
	public String checkoutPage(Model model, HttpSession session) {
		model.addAttribute("orderReciever", new OrderReciever());
		model.addAttribute("cart", cartService.getCart((User) (session.getAttribute("reg_user"))));
		return "checkout";
	}

	@PostMapping("/checkout")
	public String orderCheckout(@Valid @ModelAttribute("orderReciever") OrderReciever orderReciever, Errors errors,
			Model model, Principal principal, HttpServletRequest request, HttpSession session) {

		Cart cart = ((User) (session.getAttribute("reg_user"))).getCart();
		if (errors.hasErrors()) {
			model.addAttribute("cart", cart);
			return "checkout";
		}

		Order order = saveOrder(cart, orderReciever);

		if (order == null) {
			model.addAttribute("cart", cart);
			model.addAttribute("order_status", false);
			return "checkout";
		}

		Address address = orderReciever.getAddress();
		address.setOrderReciever(orderReciever);
		orderReciever.setAddress(null);
		if (orderRecieverService.saveOrUpdate(orderReciever) == null) {
			orderService.delete(order);
			model.addAttribute("cart", cart);
			model.addAttribute("order_status", false);
			return "checkout";
		}

		if (addressService.saveOrUpdate(address) == null) {
			orderRecieverService.delete(orderReciever);
			orderService.delete(order);
			model.addAttribute("cart", cart);
			model.addAttribute("order_status", false);
			return "checkout";
		}

		orderPlacedEmail.send(cart.getUser().getEmail(), order.getOrderId().toString(),
				"http://" + request.getServerName() + ":" + request.getServerPort());
		cartUtilService.resetCart(cart);
		session.setAttribute("cart_count", 0);
		return "redirect:/user/bill/" + order.getOrderId();
	}

	@GetMapping("/bill/{id}")
	private String billPage(@PathVariable("id") Long id, Model model) {
		Order order = orderService.get(id);
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

		if (orderService.saveOrUpdate(order) == null) {
			return null;
		}
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
		orderItemService.saveOrUpdate(orderItem);
	}
}
