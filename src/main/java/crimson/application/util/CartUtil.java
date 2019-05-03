package crimson.application.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.Cart;
import crimson.application.repository.CartItemRepository;
import crimson.application.repository.CartRepository;

@Service
public class CartUtil {

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
