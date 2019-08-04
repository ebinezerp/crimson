
package crimson.application.controller.api;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import crimson.application.exception.OrderSaveException;
import crimson.application.model.Address;
import crimson.application.model.Cart;
import crimson.application.model.CartItem;
import crimson.application.model.Order;
import crimson.application.model.OrderItem;

import crimson.application.model.User;
import crimson.application.model.UserDetails;
import crimson.application.service.AddressService;
import crimson.application.service.CartItemService;
import crimson.application.service.CartService;
import crimson.application.service.OrderItemService;

import crimson.application.service.OrderService;
import crimson.application.service.ProductService;
import crimson.application.service.UserService;
import crimson.application.util.CartUtil;
import crimson.application.util.OrderPlacedEmail;

@RestController

@CrossOrigin(origins = "*")

@RequestMapping("/api")
public class ApiCheckoutController {

	@Autowired
	private UserService userService;

	@Autowired
	private ProductService productService;

	@Autowired
	private CartService cartService;

	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private OrderItemService orderItemService;

	@Autowired
	private AddressService addressService;

	@Autowired
	private CartUtil cartUtil;

	@Autowired
	private OrderPlacedEmail orderPlacedEmail;

	@PostMapping("/order")
	public ResponseEntity<Order> saveOrder(@RequestBody UserDetails userDetails, HttpServletRequest request,
			@RequestParam("userId") Long userId) {

		System.out.println(userDetails);

		User user = userService.getUserById(userId);
		Cart cart = user.getCart();
		Order order = createOrder(cart, userDetails);
		System.out.println(order);
		if (orderService.saveOrUpdate(order) == null) {
			System.out.println("Order Service is Saved");
			throw new OrderSaveException();
		}

		orderPlacedEmail.send(cart.getUser().getEmail(), order.getOrderId().toString(),
				"http://" + request.getServerName() + ":" + request.getServerPort());
		cartUtil.resetCart(cart);

		return new ResponseEntity<Order>(order, HttpStatus.OK);
	}

	private Order createOrder(Cart cart, UserDetails userDetails) {
		Order order = new Order();
		order.setQuantity(cart.getQuantity());
		order.setTotalAmount(cart.getTotalAmount());
		order.setUser(cart.getUser());
		order.setDeliveryStatus(false);
		order.setDispatchStatus(false);
		order.setOrderedDate(new Date());

		Calendar cal = Calendar.getInstance();
		cal.setTime(order.getOrderedDate());
		cal.add(Calendar.DAY_OF_MONTH, 3);

		order.setDeliveryDate(cal.getTime());

		ArrayList<OrderItem> orderItems = new ArrayList<OrderItem>();

		for (CartItem cartItem : cart.getCartItems()) {
			OrderItem orderItem = createOrderItem(cartItem);
			orderItem.setOrder(order);
			orderItems.add(orderItem);
		}

		Address address = userDetails.getAddress();
		address.setId(null);
		order.setOrderAddress(address);
		address.setOrder(order);

		order.setOrderItems(orderItems);

		return order;
	}

	private OrderItem createOrderItem(CartItem cartItem) {
		OrderItem orderItem = new OrderItem();
		orderItem.setProduct(cartItem.getProduct());
		orderItem.setQuantity(cartItem.getQuantity());
		orderItem.setTotalPrice(cartItem.getTotalPrice());
		orderItem.setUnitPrice(cartItem.getUnitPrice());

		return orderItem;
	}

}
