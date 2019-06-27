package crimson.application.exception;

import crimson.application.model.LoginUser;

public class UserNotFoundException extends RuntimeException {

	private LoginUser user;
	private String username;

	public UserNotFoundException(LoginUser user) {
		this.user = user;
	}

	public UserNotFoundException(String username) {
		this.username = username;
	}

	@Override
	public String getMessage() {
		if (user != null) {
			return user.getEmail() + " is not found";
		} else {
			return username + " is not found";
		}
	}

}
