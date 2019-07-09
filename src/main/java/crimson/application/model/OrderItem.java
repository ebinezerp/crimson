package crimson.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.ToString;

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
	@ToString.Exclude
	private Product product;
	
	@ManyToOne
	@ToString.Exclude
	@JsonIgnore
	private Order order;

}
