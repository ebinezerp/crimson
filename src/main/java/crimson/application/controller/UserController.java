package crimson.application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import crimson.application.model.User;
import crimson.application.service.UserService;

@Controller
@RequestMapping
public class UserController {
	
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/index")
	public String userPage() {
		return "index";
	}
	
	
	@GetMapping("/test")
	@ResponseBody
	public String test() {
		
		User user=new User();
		
		userService.saveOrUpdate(user);
		
		return "hello test";
	}

}
