package crimson.application.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.EqualsAndHashCode.Include;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserCategory {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull(message="Category Name should not be null")
	@NotBlank(message="Category Name should not be blank")
	@Column(unique = true , nullable = false)
	private String categoryName;
	
	@OneToMany(mappedBy="userCategory", fetch = FetchType.EAGER)
	@ToString.Exclude
	@JsonIgnore
	private List<UserDetails> userDetails;
}
