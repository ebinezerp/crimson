package crimson.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
public class Address {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String street;
	
	private String apartment;
	
	private String city;
	
	private String country;
	
	private String code;
	
	@OneToOne
	@ToString.Exclude
	@JsonIgnore
	private OrderReciever orderReciever;
	
	
}
