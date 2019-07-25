package crimson.application.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@Component
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userId;
	@NotBlank(message = "Username should not be empty.")
	@NotNull
	@Column(unique = true, nullable = false)
	@Size(min = 5, message = "Username should be atleast min 5 characters.")
	private String username;

	@NotBlank(message = "Email should not be empty.")
	@NotNull
	@Column(unique = true, nullable = false)
	@Pattern(regexp = "^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$", message = "Enter a valid email Id")
	private String email;

	@NotBlank(message = "Mobile should not be empty.")
	@NotNull
	@Column(unique = true, nullable = false)
	@Pattern(regexp = "^[6-9]{1}[0-9]{9}$", message = "Enter a valid mobile Number")
	private String mobile;

	@NotNull
	@Column(nullable = false)
	@Pattern(regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$*%^&+=])(?=\\S+$).{8,}$", message = "Password Should Contain atleast 8 characters with atleast one Capital, one small alphabet, one digit and one special character")
	private String password;

	@Transient
	private String confirmPassword;

	@NotBlank
	@NotNull
	private String role;

	@NotNull
	private Boolean isActive;

	@OneToOne(mappedBy = "user",fetch=FetchType.LAZY)
	private Cart cart;

}
