package crimson.application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.dao.CartItemRepository;
import crimson.application.dao.CartRepository;
import crimson.application.model.Cart;

@Service
public class CartUtilService {

	@Autowired
	private CartItemRepository cartItemRepository;

	@Autowired
	private CartRepository cartRepository;

	public boolean resetCart(Cart cart) {
		try {
			cartItemRepository.deleteAllByCart(cart);
			cart.setQuantity(0);
			cart.setTotalAmount(0.0);
			cart.setCartItems(null);
			cartRepository.save(cart);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
