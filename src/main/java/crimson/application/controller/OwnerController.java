package crimson.application.controller;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import crimson.application.dao.UserRepository;
import crimson.application.model.User;
import crimson.application.service.EmailService;
import crimson.application.service.RandomPasswordGenerator;
import crimson.application.service.Validation;

@Controller
@RequestMapping("/owner")
public class OwnerController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private RandomPasswordGenerator randomPasswordGenerator;
	
	@Autowired
	private Validation validation;
	
	@Autowired
	@Qualifier("adminRegEmailService")
	private EmailService emailService;

	@GetMapping
	public String ownerpage(Model model) {
		model.addAttribute("user", new User());
		return "ownerpage";
	}

	@PostMapping("/registeradmin")
	public String addAdmin(@Valid @ModelAttribute("user") User user,Errors errors, Model model,HttpServletRequest request) {
		String password=randomPasswordGenerator.generatePassword();
		user.setPassword(passwordEncoder.encode(password));
		if(errors.hasErrors()) {
			return "ownerpage";
		}else {
			Map<String, String> error_Messages=validation.existenceValidation(user);
			if(error_Messages.size()>0) {
				model.addAttribute("error_messages",error_Messages);
				return "ownerpage";
			}
		}
		userRepository.save(user);
		emailService.send(user.getEmail(),password,"http://"+request.getServerName()+":"+request.getServerPort());
		return "redirect:/owner/";
	}

	@GetMapping("/admins")
	public String admins(Model model) {
		model.addAttribute("admins", userRepository.findUserByRole("ROLE_ADMIN"));
		return "adminlist";
	}
	
	@GetMapping("/disableadmin/{userId}")
	public String adminDisable(@PathVariable("userId")Long userId,Model model) {
		User user=userRepository.getOne(userId);
		if(user!=null) {
			user.setIsActive(false);
			userRepository.save(user);
		}else {
			model.addAttribute("error_message", "User is not existed");
			return "adminlist";
		}
		
		return "redirect:/owner/admins";
						
	}
	
	
	@GetMapping("/editadmin/{userId}")
	public String editAdminDetails(@PathVariable("userId")Long userId,Model model) {
		User user=userRepository.getOne(userId);
		if(user!=null) {
			model.addAttribute("user", user);
			return "editadmin";
		}
		
		model.addAttribute("error_message", "User is not existed");
		return "adminlist";
	}
	
	
	@PostMapping("/update")
	public String updateAdminDetails(@Valid User user,Errors errors,Model model) {
		if(errors.hasErrors()) {
			return "editadmin";
		}
		
		Map<String,String> error_messages=validation.updationValidation(user);
		
		
		if(error_messages.size()>0) {
			model.addAttribute("error_messages", error_messages);
			return "editadmin";
		}
		
		userRepository.save(user);
		
		return "redirect:/owner/admins";
		
	}
}
