package crimson.application.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import crimson.application.model.UserCategory;
import crimson.application.service.UserCategoryService;

@Component
public class UserCategoryValidation {

	@Autowired
	private UserCategoryService userCategoryService;

	public Map<String, String> insertValidate(UserCategory userCategory) {
		Map<String, String> errorMessages = new HashMap<String, String>();

		if (userCategoryService.get(userCategory.getCategoryName()) != null) {
			errorMessages.put("categoryNameError", "Category Name is Existed");
		}

		return errorMessages;
	}

	public Map<String, String> updateValidate(UserCategory userCategory) {
		Map<String, String> errorMessages = new HashMap<String, String>();

		if (userCategoryService.getCategoryWithCategoryNameAndNotId(userCategory.getCategoryName(),
				userCategory.getId()) != null) {
			errorMessages.put("categoryNameError", "Category Name is Existed");
		}

		return errorMessages;
	}

}
