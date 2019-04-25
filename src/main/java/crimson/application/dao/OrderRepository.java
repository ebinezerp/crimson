package crimson.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {

}
