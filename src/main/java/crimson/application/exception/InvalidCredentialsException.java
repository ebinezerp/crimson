package crimson.application.exception;

import crimson.application.model.LoginUser;

public class InvalidCredentialsException extends RuntimeException {
	private LoginUser user;

	public InvalidCredentialsException(LoginUser user) {
		this.user = user;
	}

	@Override
	public String getMessage() {
		return "Invalid Credentials";
	}
}
