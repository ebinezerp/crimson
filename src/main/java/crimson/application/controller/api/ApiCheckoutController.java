package crimson.application.controller.api;

import java.util.ArrayList;
import java.util.Date;

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

import crimson.application.model.Address;
import crimson.application.model.Cart;
import crimson.application.model.CartItem;
import crimson.application.model.Order;
import crimson.application.model.OrderItem;
import crimson.application.model.OrderReciever;
import crimson.application.model.User;
import crimson.application.service.AddressService;
import crimson.application.service.CartItemService;
import crimson.application.service.CartService;
import crimson.application.service.OrderItemService;
import crimson.application.service.OrderRecieverService;
import crimson.application.service.OrderService;
import crimson.application.service.ProductService;
import crimson.application.service.UserService;
import crimson.application.util.CartUtil;

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
	private OrderRecieverService orderReceiverService;

	@Autowired
	private AddressService addressService;

	@Autowired
	private CartUtil cartUtil;

	@PostMapping("/order")
	public ResponseEntity<Order> saveOrder(@RequestBody OrderReciever orderReciever,
			@RequestParam("userId") Long userId) {

		User user = userService.getUserById(userId);
		Cart cart = user.getCart();
		Order order = createOrder(cart);
		orderService.saveOrUpdate(order);

		for (OrderItem orderItem : order.getOrderItems()) {
			orderItemService.saveOrUpdate(orderItem);
		}
		Address address = orderReciever.getAddress();
		address.setOrderReciever(orderReciever);
		orderReciever.setAddress(null);
		order.setOrderReciever(orderReciever);
		orderReciever.setOrder(order);
		orderReceiverService.saveOrUpdate(orderReciever);
		orderReciever.setAddress(address);
		System.out.println(address.getOrderReciever());
		address.setOrderReciever(orderReciever);
		addressService.saveOrUpdate(address);
		cartUtil.resetCart(cart);

		return new ResponseEntity<Order>(order, HttpStatus.OK);
	}

	@GetMapping("/order")
	public ResponseEntity<Order> getOrder(@RequestParam("orderId") Long orderId) {
		return new ResponseEntity<Order>(orderService.get(orderId), HttpStatus.OK);
	}

	private Order createOrder(Cart cart) {
		Order order = new Order();
		order.setQuantity(cart.getQuantity());
		order.setTotalAmount(cart.getTotalAmount());
		order.setUser(cart.getUser());
		order.setDeliveryStatus(false);
		order.setDispatchStatus(false);
		order.setOrderedDate(new Date());

		ArrayList<OrderItem> orderItems = new ArrayList<OrderItem>();

		for (CartItem cartItem : cart.getCartItems()) {
			OrderItem orderItem = createOrderItem(cartItem);
			orderItem.setOrder(order);
			orderItems.add(orderItem);
		}

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
