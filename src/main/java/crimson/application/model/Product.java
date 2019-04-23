package crimson.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@NotBlank(message = "Product name should not be blank")
	@NotNull(message = "Product name should not be null")
	@Size(min = 4, message = "Product Name should be atleast 4 characters")
	private String productName;
	
	@NotBlank(message = "Product Description should not be blank")
	@NotNull(message = "Product Description should not be null")
	@Size(min = 30, message = "Product Description should be atleast 30 characters")
	private String productDescription;
	
	
	@NotNull(message = "Product price shold not be null")
	@Digits(integer = 7,fraction = 2)
	private Double price;
	
	
	@NotNull(message = "Stock count shold not be null")
	@Digits(integer = 5,fraction = 0)
	private Integer stock;
	

	@NotNull(message = "Status shold not be null")
	private Boolean status;
	
	@Transient
	@ToString.Exclude
	private MultipartFile productImage;
	
	
}
