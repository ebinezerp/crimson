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
import lombok.ToString;

@Entity
@Data
@Table(name = "order_table")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long orderId;

	private Integer quantity;

	private Double totalAmount;

	private Boolean dispatchStatus;

	private Boolean deliveryStatus;

	@ManyToOne
	@ToString.Exclude
	private User user;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "order")
	@ToString.Exclude
	private List<OrderItem> orderItems;

	@OneToOne(mappedBy = "order")
	@ToString.Exclude
	private OrderReciever orderReciever;

}
