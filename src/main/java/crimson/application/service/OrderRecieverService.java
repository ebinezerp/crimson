package crimson.application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.Order;
import crimson.application.model.OrderReciever;
import crimson.application.repository.OrderRecieverRepository;

@Service
public class OrderRecieverService {

	@Autowired
	private OrderRecieverRepository orderRecieverRepository;

	public OrderReciever saveOrUpdate(OrderReciever orderReciever) {
		try {
			return orderRecieverRepository.save(orderReciever);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean delete(OrderReciever orderReciever) {
		try {
			orderRecieverRepository.delete(orderReciever);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public OrderReciever get(Long id) {
		try {
			return orderRecieverRepository.findById(id).get();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public OrderReciever lastOrderReciever(Order order) {
		try {
			return orderRecieverRepository.findByOrder(order);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	

}
