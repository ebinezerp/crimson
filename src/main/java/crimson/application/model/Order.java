package crimson.application.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

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

	private Date orderedDate;

	private Date dispatchedDate;

	private Date deliveryDate;

	@ManyToOne
	@ToString.Exclude
	@JsonIgnore
	private User user;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "order", cascade = { CascadeType.PERSIST, CascadeType.REFRESH,
			CascadeType.MERGE })
	@ToString.Exclude
	private List<OrderItem> orderItems;

	@Column(nullable = false)
	private boolean paymentStatus;

	@OneToOne(mappedBy = "order", cascade = { CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.MERGE })
	private Address orderAddress;

}
