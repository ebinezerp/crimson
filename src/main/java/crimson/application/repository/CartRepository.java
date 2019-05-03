package crimson.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.Cart;
import crimson.application.model.User;

public interface CartRepository extends JpaRepository<Cart, Long>{
	public Cart findCartByUser(User user);
}
