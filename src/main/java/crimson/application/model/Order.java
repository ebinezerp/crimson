package crimson.application.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="order_table")
public class Order {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long orderId;
	
	private Integer quantity;
	
	private Double totalAmount;
	
	@ManyToOne
	private User user;
	
	@OneToMany(fetch=FetchType.EAGER,mappedBy="order")
	private List<OrderItem> orderItems;
	
	@OneToOne(mappedBy="order")
	private OrderReciever orderReciever;

}
