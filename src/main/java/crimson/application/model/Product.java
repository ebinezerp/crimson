package crimson.application.model;

import java.io.Serializable;
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
import javax.persistence.Transient;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@NotBlank(message = "Product name should not be blank")
	@NotNull(message = "Product name should not be null")
	@Size(min = 4, message = "Product Name should be atleast 4 characters")
	@Column(nullable = false, unique = true)
	private String productName;

	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.MERGE }, mappedBy ="product")
	private List<ProductDescription> productDescriptions;
	
	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.MERGE } , mappedBy ="product")
	private List<ProductFeature> productFeatures;
	
	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.MERGE } , mappedBy ="product")
	private List<ProductApplication> productApplications;
	
	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.MERGE } , mappedBy ="product")
	private List<Packaging> packagings;
	
	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.MERGE }, mappedBy ="product")
	private List<ProductSpecification> productSpecifications;

	@NotNull(message = "Product price shold not be null")
	@Digits(integer = 7, fraction = 2)
	@Column(nullable = false)
	private Double price;

	/*
	 * @NotBlank(message = "Shelf Life should not be blank")
	 * 
	 * @NotNull(message = "Shelf Life should not be null")
	 * 
	 * @Size(min = 4, message = "Shelf Life should be atleast 4 characters")
	 * 
	 * @Column(nullable = false)
	 */
	private String shelfLife;
	
	/*
	 * @NotBlank(message = "Storage should not be blank")
	 * 
	 * @NotNull(message = "Storage should not be null")
	 * 
	 * @Size(min = 4, message = "Storage should be atleast 4 characters")
	 * 
	 * @Column(nullable = false)
	 */
	private String storage;
	
	@NotNull(message = "Stock count shold not be null")
	@Digits(integer = 5, fraction = 0)
	@Column(nullable = false)
	private Integer stock;

	@NotNull(message = "Status shold not be null")
	@Column(nullable = false)
	private Boolean status;
	

	@Transient
	@ToString.Exclude
	private MultipartFile productImage;

	@ManyToOne(fetch = FetchType.EAGER)
	@JsonIgnore
	private Category category;

}
