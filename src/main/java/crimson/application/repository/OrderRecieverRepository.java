package crimson.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.OrderReciever;

public interface OrderRecieverRepository extends JpaRepository<OrderReciever, Long> {
}
