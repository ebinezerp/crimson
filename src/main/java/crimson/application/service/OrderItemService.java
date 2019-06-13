package crimson.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.Order;
import crimson.application.model.OrderItem;
import crimson.application.repository.OrderItemRepository;

@Service
public class OrderItemService {

	@Autowired
	private OrderItemRepository orderItemRepository;

	public OrderItem saveOrUpdate(OrderItem orderItem) {
		try {
			return orderItemRepository.save(orderItem);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean delete(OrderItem orderItem) {
		try {
			orderItemRepository.delete(orderItem);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<OrderItem> getOrderItems(Order order) {
		try {
			return orderItemRepository.findAllByOrder(order);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

}
