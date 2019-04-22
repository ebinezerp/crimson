package crimson.application.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crimson.application.dao.UserRepository;
import crimson.application.model.User;



@Controller
public class HomeController {
	
    @Autowired
    private UserRepository userRepository;
	
	@GetMapping("/")
	public String indexPage(Model model,HttpServletRequest request,Principal principal) {
		
		model.addAttribute("user", new User());	
		
		if(principal!=null) {
			User user=userRepository.findUserByEmail(principal.getName());
			if(user.getRole().equalsIgnoreCase("ROLE_OWNER")) {
				return "redirect:/owner";
			}else if(user.getRole().equalsIgnoreCase("ROLE_ADMIN")) {
				return "adminpage";
			}
		}
		return "index";
	}
	
	
	
}
