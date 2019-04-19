package crimson.application.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import crimson.application.dao.UserRepository;
import crimson.application.model.User;

@Controller
public class SignupAndLoginController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@PostMapping("/register")
	public String userRegister(@ModelAttribute @Valid User user, Errors errors, Model model) {
		if (errors.hasErrors()) {
			model.addAttribute("status", "input_errors");
			return "index";
		}
		user.setPassword(passwordEncoder.encode(user.getPassword()));

		userRepository.save(user);
		return "redirect:/?login";
	}

}
