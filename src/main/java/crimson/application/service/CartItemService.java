package crimson.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.Cart;
import crimson.application.model.CartItem;
import crimson.application.model.Product;
import crimson.application.repository.CartItemRepository;

@Service
public class CartItemService {

	@Autowired
	private CartItemRepository cartItemRepository;

	public CartItem saveOrUpdate(CartItem cartItem) {
		try {
			return cartItemRepository.save(cartItem);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean delete(CartItem cartItem) {
		try {
			cartItemRepository.delete(cartItem);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteAll(Cart cart) {
		try {
			cartItemRepository.deleteAllByCart(cart);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public CartItem get(Long id) {
		try {
			return cartItemRepository.findById(id).get();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<CartItem> getCartItems(Cart cart) {
		try {
			return cartItemRepository.findCartItemByCart(cart);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public CartItem getCartItem(Cart cart, Product product) {
		try {
			return cartItemRepository.findCartItemByCartAndProduct(cart, product);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
