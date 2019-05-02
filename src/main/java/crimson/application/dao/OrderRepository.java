package crimson.application.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.Order;
import crimson.application.model.User;

public interface OrderRepository extends JpaRepository<Order, Long> {
	public List<Order> findAllByUserOrderByOrderedDateDesc(User user);
	public List<Order> findAllByOrderByOrderedDateDesc();
}
