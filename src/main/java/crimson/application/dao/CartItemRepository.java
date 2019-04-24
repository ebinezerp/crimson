package crimson.application.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import crimson.application.model.Cart;
import crimson.application.model.CartItem;
import crimson.application.model.Product;

@Transactional
public interface CartItemRepository extends JpaRepository<CartItem, Long> {
	public CartItem findCartItemByCartAndProduct(Cart cart,Product product);
	public List<CartItem> findCartItemByCart(Cart cart);
	public void deleteAllByCart(Cart cart);
}
