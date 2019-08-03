package crimson.application.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crimson.application.model.UserCategory;
import crimson.application.service.UserCategoryService;
import crimson.application.service.UserService;
import crimson.application.util.UserCategoryValidation;

@Controller
public class AdminUserCategoryController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserCategoryService userCategoryService;

	@Autowired
	private UserCategoryValidation userCategoryValidation;

	@GetMapping(value = { "/usercategory", "/usercategory/{id}" })
	public String userCategory(@RequestParam(value = "addstatus", required = false) String addStatus,
			@PathVariable(name = "id", required = false) Long id, Model model) {

		if (addStatus != null) {
			model.addAttribute("addstatus", addStatus);
		}

		UserCategory userCategory = null;

		if (id == null) {
			userCategory = new UserCategory();
		} else {
			userCategory = userCategoryService.get(id);
			if (userCategory == null) {
				return "redirect:/usercategory";
			}
		}

		model.addAttribute("userCategory", userCategory);
		model.addAttribute("userCategories", userCategoryService.getUserCategories());

		return "usercategory";
	}

	@PostMapping("/usercategory")
	public String saveUserCategory(@Valid @ModelAttribute("userCategory") UserCategory userCategory, Errors errors,
			Model model) {

		if (errors.hasErrors()) {
			model.addAttribute("userCategory", userCategory);
			return "usercategory";
		}

		Map<String, String> errorMessages = null;
		if (userCategory.getId() == null) {
			errorMessages = userCategoryValidation.insertValidate(userCategory);
		} else {
			errorMessages = userCategoryValidation.updateValidate(userCategory);
		}

		if (errorMessages.size() > 0) {
			model.addAttribute("errorMessages", errorMessages);
			return "usercategory";
		}

		if (userCategoryService.save(userCategory) == null) {
			return "redirect:/usercategory?addstatus=false";
		}

		return "redirect:/usercategory?addstatus=true";

	}

}
