package crimson.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class OrderItem {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private Integer quantity;
	
	private Double unitPrice;
	
	private Double totalPrice;
	
	@OneToOne
	private Product product;
	
	@ManyToOne
	private Order order;

}
