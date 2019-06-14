package crimson.application.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.Cart;
import crimson.application.repository.CartItemRepository;
import crimson.application.repository.CartRepository;
import crimson.application.service.CartItemService;
import crimson.application.service.CartService;

@Service
public class CartUtil {

	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private CartService cartService;

	public boolean resetCart(Cart cart) {
		try {
			cartItemService.deleteAll(cart);
			cart.setQuantity(0);
			cart.setTotalAmount(0.0);
			cart.setCartItems(null);
			cartService.saveOrUpdate(cart);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
