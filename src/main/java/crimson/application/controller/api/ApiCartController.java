package crimson.application.controller.api;

import java.util.ArrayList;

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
	public ResponseEntity<Cart> addToCart(@RequestParam("userId") Long userId,
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
			ArrayList<CartItem> cartItems=new ArrayList<CartItem>();
			cartItem = createCartItem(product);
			cart = createCart(user, product);
			cartItems.add(cartItem);
			cart.setCartItems(cartItems);
			cartItem.setCart(cart);
			cartService.saveOrUpdate(cart);
			cartItemService.saveOrUpdate(cartItem);
		} else {
			cartItem = cartItemService.getCartItem(cart, product);
			if (cartItem == null) {
				cartItem = createCartItem(product);
				cart.getCartItems().add(cartItem);
				cartItem.setCart(cart);
			} else {
				updateCartItem(cartItem, 1);
			}
			updateCart(cart, product, 1);
			cartItemService.saveOrUpdate(cartItem);
			cartService.saveOrUpdate(cart);
		}
		
		
		return new ResponseEntity<Cart>(cart, HttpStatus.OK);
	}

	@PostMapping("/deletefromcart")
	public ResponseEntity<Cart> deleteFromCart(@RequestParam("userId") Long userId,
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
			cart.getCartItems().remove(cartItem);
		}
		updateCart(cart, product, -1);
		cartService.saveOrUpdate(cart);

		return new ResponseEntity<Cart>(cart, HttpStatus.OK);
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
		cart.setTotalAmount(cart.getTotalAmount() + (product.getPrice() * quantity));
	}

	private void updateCartItem(CartItem cartItem, Integer quantity) {
		System.out.println(cartItem.getQuantity());
		cartItem.setQuantity(cartItem.getQuantity() + quantity);
		System.out.println(cartItem.getQuantity());
		cartItem.setTotalPrice(cartItem.getTotalPrice() + (cartItem.getUnitPrice() * quantity));
	}
}
