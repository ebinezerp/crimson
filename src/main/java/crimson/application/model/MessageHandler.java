package crimson.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class MessageHandler {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@OneToOne
	private ContactMessage contactMessage;
	
	@OneToOne
	private User handledBy;
	
	@OneToOne
	private User transferTo;
	
	private String remarks;
}
