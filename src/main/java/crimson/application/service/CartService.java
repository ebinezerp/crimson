package crimson.application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.Cart;
import crimson.application.model.User;
import crimson.application.repository.CartRepository;

@Service
public class CartService {

	@Autowired
	private CartRepository cartRepository;

	public Cart saveOrUpdate(Cart cart) {
		try {
			return cartRepository.save(cart);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean delete(Cart cart) {
		try {
			cartRepository.delete(cart);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public Cart getCart(User user) {
		try {
			return cartRepository.findCartByUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

}
