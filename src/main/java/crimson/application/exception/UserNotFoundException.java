package crimson.application.exception;

import crimson.application.model.LoginUser;

public class UserNotFoundException extends RuntimeException {

	private LoginUser user;
	private String username;
	private Long userId;

	public UserNotFoundException(LoginUser user) {
		this.user = user;
	}

	public UserNotFoundException(String username) {
		this.username = username;
	}
	
	public UserNotFoundException(Long userId) {
		this.userId = userId;
	}

	@Override
	public String getMessage() {
		if (user != null) {
			return user.getEmail() + " is not found";
		} else if(username != null){
			return username + " is not found";
		}else {
			return userId +" is not found";
		}
	}

}
