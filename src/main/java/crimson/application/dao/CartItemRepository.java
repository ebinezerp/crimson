package crimson.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.Cart;
import crimson.application.model.CartItem;
import crimson.application.model.Product;

public interface CartItemRepository extends JpaRepository<CartItem, Long> {
	public CartItem findCartItemByCartAndProduct(Cart cart,Product product);
}
