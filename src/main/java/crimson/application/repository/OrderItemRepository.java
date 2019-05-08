package crimson.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.Order;
import crimson.application.model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {
	public List<OrderItem> findAllByOrder(Order order);
}
