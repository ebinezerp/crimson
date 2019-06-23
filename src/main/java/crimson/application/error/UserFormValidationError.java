package crimson.application.error;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
@AllArgsConstructor
public class UserFormValidationError implements ApiSubError {
	private String object;
	private String field;
	private Object rejectedValue;
	private String message;

	public UserFormValidationError(String object, String message) {
		this.object = object;
		this.message = message;
	}
}
