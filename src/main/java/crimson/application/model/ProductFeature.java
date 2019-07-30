package crimson.application.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductFeature {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Lob
	@NotBlank(message = "Product Feature should not be blank")
	@NotNull(message = "Product Feature should not be null")
	@Size(min = 10, message = "Product Feature should be atleast 10 characters")
	@Type(type="text")
	@Column(nullable= false)
	private String feature;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JsonIgnore
	@ToString.Exclude
	private Product product;
}
