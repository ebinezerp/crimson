package crimson.application.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Data;

@Entity
@Data
public class ContactMessage {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long messageId;

	@NotBlank(message = "Username should not be empty.")
	@NotNull
	@Column(nullable = false)
	@Size(min = 5, message = "fullname should be atleast min 5 characters.")
	private String fullname;

	@NotBlank(message = "Email should not be empty.")
	@NotNull
	@Column(nullable = false)
	@Pattern(regexp = "^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$", message = "Enter a valid email Id")
	private String email;
	
	@NotBlank(message = "Mobile should not be empty.")
	@NotNull
	@Column(nullable = false)
	@Pattern(regexp = "^[6-9]{1}[0-9]{9}$", message = "Enter a valid mobile Number")
	private String mobile;
	
	@NotBlank(message = "Subject should not be empty.")
	@NotNull(message="Subject should not be null")
	@Column(nullable = false)
	private String subject;
	
	@NotBlank(message = "Subject should not be empty.")
	@NotNull(message="Subject should not be null")
	@Column(nullable = false)
	@Size(min =20, message = "message should be atleast min 30 characters.")
	private String message;
	
	private Boolean attended;
	
	private Boolean resolved;

}
