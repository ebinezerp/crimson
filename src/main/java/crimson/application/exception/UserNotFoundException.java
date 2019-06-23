package crimson.application.exception;

import crimson.application.model.LoginUser;

public class UserNotFoundException extends RuntimeException{
	
	private LoginUser user;
	
	public UserNotFoundException(LoginUser user) {
		this.user=user;
	}
	
	@Override
	public String getMessage() {
		return user.getEmail()+" is not found";
	}

}
