package crimson.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {

}
