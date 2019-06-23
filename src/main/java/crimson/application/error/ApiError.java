package crimson.application.error;

import java.util.List;

import org.springframework.http.HttpStatus;

public class ApiError {

	private HttpStatus httpStatus;
	private String message;
	private String debugMessage;
	private List<ApiSubError> subErrors;

	public ApiError(HttpStatus httpStatus) {
		super();
		this.httpStatus = httpStatus;
	}

	public ApiError(HttpStatus httpStatus, String message) {
		super();
		this.httpStatus = httpStatus;
		this.message = message;
	}

	public ApiError(HttpStatus httpStatus, String message, List<ApiSubError> subErrors) {
		super();
		this.httpStatus = httpStatus;
		this.message = message;
		this.subErrors = subErrors;
	}

	public ApiError(HttpStatus httpStatus, String message, Throwable ex) {
		super();
		this.httpStatus = httpStatus;
		this.message = message;
		this.debugMessage = ex.getLocalizedMessage();
	}

	public HttpStatus getHttpStatus() {
		return httpStatus;
	}

	public void setHttpStatus(HttpStatus httpStatus) {
		this.httpStatus = httpStatus;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getDebugMessage() {
		return debugMessage;
	}

	public void setDebugMessage(String debugMessage) {
		this.debugMessage = debugMessage;
	}

	public List<ApiSubError> getSubErrors() {
		return subErrors;
	}

	public void setSubErrors(List<ApiSubError> subErrors) {
		this.subErrors = subErrors;
	}

}
