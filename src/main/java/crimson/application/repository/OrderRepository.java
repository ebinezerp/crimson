package crimson.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import crimson.application.model.Order;
import crimson.application.model.User;

public interface OrderRepository extends JpaRepository<Order, Long> {
	public List<Order> findAllByUserOrderByOrderedDateDesc(User user);

	public List<Order> findAllByOrderByOrderedDateDesc();

	public Order findTopByUserOrderByOrderIdDesc(User user);

	@Query("select od from Order od where orderId in (select ot.order from OrderItem ot where ot.product in (select p from Product p where p.category = (select c from Category c where categoryId=:categoryId)))")
	public List<Order> findByAdminCategoryId(Long categoryId);
}
