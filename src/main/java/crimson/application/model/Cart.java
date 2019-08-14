package crimson.application.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.Digits;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long cartId;

	@OneToOne
	@ToString.Exclude
	@JsonIgnore
	private User user;

	@Digits(integer = 12, fraction = 2)
	private Double totalAmount;

	private Integer quantity;

	@OneToMany(mappedBy="cart")
	private List<CartItem> cartItems;

}
