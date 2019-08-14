package crimson.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import crimson.application.model.Cart;
import crimson.application.model.User;

public interface CartRepository extends JpaRepository<Cart, Long>{
	public Cart findCartByUser(User user);
	@Query("select c.quantity from Cart c where c.user=:user")
	public Long cartCount(User user);
}
