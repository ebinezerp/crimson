package crimson.application.exception;

import java.util.Map;

public class UserExistenceException extends RuntimeException {

	private Map<String, String> errorMessages;

	public UserExistenceException(Map<String, String> errorMessages) {
		this.errorMessages = errorMessages;
	}

	public Map<String, String> getErrorMessages() {
		return errorMessages;
	}

	public void setErrorMessages(Map<String, String> errorMessages) {
		this.errorMessages = errorMessages;
	}

}
