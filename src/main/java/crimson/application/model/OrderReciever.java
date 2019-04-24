package crimson.application.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Data;



@Entity
@Data
public class OrderReciever {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@NotBlank(message="Enter fisrt name")
	@NotNull(message="Firstname should not be null")
	@Size(min=4, message="First name should atleast be 4 characters")
	@Column(nullable  = false)
	private String firstname;
	
	@NotBlank(message="Enter last name")
	@NotNull(message="Lastname should not be null")
	@Size(min=4, message="Last name should atleast be 4 characters")
	@Column(nullable  = false)
	private String lastname;
	
	@NotBlank(message="Enter company name")
	@NotNull(message="Company name should not be null")
	@Size(min=4, message="company should atleast be 4 characters")
	private String companyName;
	
	@NotBlank(message = "Email should not be empty.")
	@NotNull(message="email should not be null")
	@Pattern(regexp = "^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$", message = "Enter a valid email Id")
	@Column(nullable  = false)
	private String email;
	
	@NotBlank(message = "Mobile should not be empty.")
	@NotNull(message="mobile should not be null")
	@Pattern(regexp = "^[6-9]{1}[0-9]{9}$", message = "Enter a valid mobile Number")
	@Column(nullable  = false)
	private String mobile;
	
	@OneToOne(mappedBy="orderReciever")
	private Address address;
	
	@OneToOne
	private Order order;
	
}
