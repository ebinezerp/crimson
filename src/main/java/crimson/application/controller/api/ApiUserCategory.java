package crimson.application.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import crimson.application.model.UserCategory;
import crimson.application.service.UserCategoryService;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api")
public class ApiUserCategory {

	@Autowired
	private UserCategoryService userCategoryService;

	@GetMapping("/usercategory")
	public ResponseEntity<List<UserCategory>> getUserCategory() {
		return new ResponseEntity<List<UserCategory>>(userCategoryService.getUserCategories(), HttpStatus.OK);
	}

}
