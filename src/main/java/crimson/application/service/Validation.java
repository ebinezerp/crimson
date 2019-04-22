package crimson.application.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.dao.UserRepository;
import crimson.application.model.User;

@Service
public class Validation {

	@Autowired
	private UserRepository userRepository;

	public Map<String, String> existenceValidation(User user) {
		
		HashMap<String, String> errorMessages = new HashMap<String, String>();
		
		if (userRepository.findUserByUsername(user.getUsername()) != null) {
			errorMessages.put("username_error", "Username is already existed");
		}

		if (userRepository.findUserByEmail(user.getEmail()) != null) {
			errorMessages.put("email_error", "Email is already existed");
		}

		if (userRepository.findUserByMobile(user.getMobile()) != null) {
			errorMessages.put("mobile_error", "Mobile Number is already existed");
		}

		return errorMessages;
	}
	
	
	public Map<String,String> updationValidation(User user){
		Map<String,String> error_messages=new HashMap<String,String>();
		
		if(userRepository.findUserByUsernameAndUserIdNot(user.getUsername(), user.getUserId())!=null) {
			error_messages.put("username_error", "Username is already existed. Try another one.");
		}
		
		if(userRepository.findUserByEmailAndUserIdNot(user.getEmail(), user.getUserId())!=null) {
			error_messages.put("email_error", "Email is already existed. Try another one.");
		}
		
		if(userRepository.findUserByMobileAndUserIdNot(user.getMobile(), user.getUserId())!=null) {
			error_messages.put("mobile_error", "Mobile is already existed. Try another one.");
		}
		
		
		return error_messages;
	}
	
}
