package crimson.application.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.dao.ProductRepository;
import crimson.application.dao.UserRepository;
import crimson.application.model.Product;
import crimson.application.model.User;

@Service
public class Validation {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private ProductRepository productRepository;

	public Map<String, String> userExistenceValidation(User user) {

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

	public Map<String, String> userUpdationValidation(User user) {
		Map<String, String> errorMessages = new HashMap<String, String>();

		if (userRepository.findUserByUsernameAndUserIdNot(user.getUsername(), user.getUserId()) != null) {
			errorMessages.put("username_error", "Username is already existed. Try another one.");
		}

		if (userRepository.findUserByEmailAndUserIdNot(user.getEmail(), user.getUserId()) != null) {
			errorMessages.put("email_error", "Email is already existed. Try another one.");
		}

		if (userRepository.findUserByMobileAndUserIdNot(user.getMobile(), user.getUserId()) != null) {
			errorMessages.put("mobile_error", "Mobile is already existed. Try another one.");
		}

		return errorMessages;
	}

	public Map<String, String> productExistenceValidation(Product product) {
		Map<String, String> errorMessages = new HashMap<String, String>();

		if (productRepository.findProductByProductName(product.getProductName()) != null) {
			errorMessages.put("productName_error", "Product Name is already existed");
		}

		return errorMessages;
	}

	public Map<String, String> productUpdateValidation(Product product) {
		Map<String, String> errorMessages = new HashMap<String, String>();

		if (productRepository.findProductByProductNameAndIdNot(product.getProductName(), product.getId()) != null) {
			errorMessages.put("productName_error", "Product Name is already existed");
		}

		return errorMessages;
	}

}
