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
public class CartItem {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long cartItemId;
	@OneToOne
	@ToString.Exclude 
	private Product product;

	private Double unitPrice;

	private Integer quantity;

	private Double totalPrice;

	@ManyToOne
	@ToString.Exclude
	@JsonIgnore
	private Cart cart;

}
