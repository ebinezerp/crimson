package crimson.application.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import crimson.application.exception.ProductNotFoundException;
import crimson.application.exception.UserNotFoundException;
import crimson.application.model.Cart;
import crimson.application.model.CartItem;
import crimson.application.model.Product;
import crimson.application.model.User;
import crimson.application.service.CartItemService;
import crimson.application.service.CartService;
import crimson.application.service.ProductService;
import crimson.application.service.UserService;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api")
public class ApiCartController {

	@Autowired
	private UserService userService;

	@Autowired
	private ProductService productService;

	@Autowired
	private CartService cartService;

	@Autowired
	private CartItemService cartItemService;

	@PostMapping("/addtocart")
	public ResponseEntity<Boolean> addToCart(@RequestParam("userId") Long userId,
			@RequestParam("productId") Long productId) {

		User user = userService.getUserById(userId);

		if (user == null) {
			throw new UserNotFoundException(userId);
		}

		Product product = productService.getProduct(productId);
		if (product == null) {
			throw new ProductNotFoundException(productId);
		}

		Cart cart = user.getCart();
		CartItem cartItem = null;

		if (cart == null) {
			cartItem = createCartItem(product);
			cart = createCart(user, product);
			cartItem.setCart(cart);
		} else {
			cartItem = cartItemService.getCartItem(cart, product);
			if (cartItem == null) {
				cartItem = createCartItem(product);
				cartItem.setCart(cart);
			} else {
				updateCartItem(cartItem, 1);
			}
			updateCart(cart, product,1);
		}
		cartService.saveOrUpdate(cart);
		cartItemService.saveOrUpdate(cartItem);
		return new ResponseEntity<Boolean>(true, HttpStatus.OK);
	}

	@PostMapping("/deletefromcart")
	public ResponseEntity<Boolean> deleteFromCart(@RequestParam("userId") Long userId,
			@RequestParam("productId") Long productId) {
		User user = userService.getUserById(userId);

		if (user == null) {
			throw new UserNotFoundException(userId);
		}

		Product product = productService.getProduct(productId);
		if (product == null) {
			throw new ProductNotFoundException(productId);
		}

		Cart cart = user.getCart();

		CartItem cartItem = cartItemService.getCartItem(cart, product);
		if (cartItem.getQuantity() > 1) {
			updateCartItem(cartItem, -1);
			cartItemService.saveOrUpdate(cartItem);
		} else {
			cartItemService.delete(cartItem);
		}
		updateCart(cart, product,-1);
		cartService.saveOrUpdate(cart);

		return new ResponseEntity<Boolean>(true, HttpStatus.OK);
	}

	private CartItem createCartItem(Product product) {
		CartItem cartItem = new CartItem();
		cartItem.setProduct(product);
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(product.getPrice());
		cartItem.setUnitPrice(product.getPrice());
		return cartItem;
	}

	private Cart createCart(User user, Product product) {
		Cart cart = new Cart();
		cart.setQuantity(1);
		cart.setTotalAmount(product.getPrice());
		cart.setUser(user);
		return cart;
	}

	private void updateCart(Cart cart, Product product, Integer quantity) {
		cart.setQuantity(cart.getQuantity() + quantity);
		cart.setTotalAmount(cart.getTotalAmount() + (product.getPrice()*quantity));
	}

	private void updateCartItem(CartItem cartItem, Integer quantity) {
		cartItem.setQuantity(cartItem.getQuantity() + quantity);
		cartItem.setTotalPrice(cartItem.getTotalPrice() + (cartItem.getUnitPrice()*quantity));
	}
}
