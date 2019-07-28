package crimson.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.Order;
import crimson.application.model.User;
import crimson.application.repository.OrderRepository;

@Service
public class OrderService {

	@Autowired
	private OrderRepository orderRepository;

	public Order saveOrUpdate(Order order) {
		try {
			return orderRepository.save(order);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean delete(Order order) {
		try {
			orderRepository.delete(order);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Order> getOrders() {
		try {
			return orderRepository.findAllByOrderByOrderedDateDesc();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<Order> getOrders(User user) {
		try {
			return orderRepository.findAllByUserOrderByOrderedDateDesc(user);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

	public Order get(Long orderId) {
		try {
			return orderRepository.findById(orderId).get();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public Order getLast(User user) {
		try {
			return orderRepository.findTopByUserOrderByOrderIdDesc(user);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
