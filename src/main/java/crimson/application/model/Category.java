package crimson.application.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.ToString;
import lombok.ToString.Exclude;

@Entity
@Data
public class Category implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long categoryId;

	@Size(min = 3, message = "Min of three characters")
	@Column(unique = true, nullable = false)
	private String categoryName;

	@OneToMany(mappedBy="category",fetch=FetchType.EAGER)
	@JsonIgnore
	@ToString.Exclude
	private List<Product> products;
	
	
	@Transient
	@ToString.Exclude
	@JsonIgnore
	private MultipartFile catImage;

}
