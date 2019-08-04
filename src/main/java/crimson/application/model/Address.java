package crimson.application.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
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
public class Address {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String street;

	private String doorNo;

	private String city;

	private String country;

	private String code;

	@OneToOne(fetch = FetchType.LAZY)
	@ToString.Exclude
	@JsonIgnore
	private Order order;

	@OneToOne(mappedBy="address")
	@ToString.Exclude
	@JsonIgnore
	private UserDetails userDetails;

}
