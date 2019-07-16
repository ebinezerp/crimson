package crimson.application.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.tomcat.util.buf.UDecoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crimson.application.model.User;
import crimson.application.repository.UserRepository;
import crimson.application.service.UserService;
import crimson.application.util.Email;
import crimson.application.util.RandomPasswordGenerator;
import crimson.application.util.Validation;

@Controller
public class SignupAndLoginController {

	@Autowired
	private UserService userService;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	@Qualifier("forgetemail")
	private Email emailService;

	@Autowired
	private RandomPasswordGenerator randomPasswordGenerator;

	@Autowired
	@Qualifier("regemail")
	private Email regEmailService;

	@Autowired
	private Validation validation;

	@PostMapping("/register")
	public String userRegister(@ModelAttribute @Valid User user, Errors errors, Model model,
			HttpServletRequest request) {
		if (errors.hasErrors()) {
			model.addAttribute("signup_status", "input_errors");
			return "index";
		}
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		Map<String, String> error_messages = validation.userExistenceValidation(user);

		if (error_messages.size() > 0) {
			model.addAttribute("signup_status", "input_errors");
			model.addAttribute("error_messages", error_messages);
			return "index";
		}

		if (userService.saveOrUpdate(user) == null) {
			model.addAttribute("signup_status", "input_errors");
			model.addAttribute("signup_error", true);
			return "index";
		}

		if (!regEmailService.send(user.getEmail(), "",
				"http://" + request.getServerName() + ":" + request.getServerPort())) {
			System.out.println("Register Error");
			model.addAttribute("signup_status", "input_errors");
			model.addAttribute("email_error", "Email is not valid. Enter correct email.");
			return "index";
		}

		return "redirect:/?login";
	}

	@GetMapping("/forgetpassword")
	public String forgetPassword(@RequestParam(value = "email", required = false) String emailExistStatus,
			@RequestParam(value = "update_status", required = false) String updateStatus, Model model,
			HttpServletRequest request) {
		model.addAttribute("user", new User());

		if (emailExistStatus != null) {
			model.addAttribute("user_exists_status", emailExistStatus);
		}

		if (updateStatus != null) {
			model.addAttribute("update_status", updateStatus);
		}

		return "forgetpassword";
	}

	@PostMapping("/verifyemail")
	public String verifyemail(@RequestParam("email") String email, HttpServletRequest request, Model model) {

		User user = userService.getUserByEmail(email);

		model.addAttribute("user", new User());

		if (user != null) {
			String password = randomPasswordGenerator.generatePassword();
			user.setPassword(passwordEncoder.encode(password));
			if (userService.saveOrUpdate(user) == null) {
				return "redirect:/forgetpassword?update_status=false";
			}
			emailService.send(user.getEmail(), password,
					"http://" + request.getServerName() + ":" + request.getServerPort());
			return "redirect:/resetpassword?email=" + user.getEmail();
		}

		return "redirect:/forgetpassword?email=false";
	}

	@GetMapping("/resetpassword")
	public String resetPassword(@RequestParam(value = "email", required = false) String email,
			@RequestParam(value = "pwdstatus", required = false) String pwdStatus, Model model) {

		if (email == null) {
			return "redirect:/forgetpassword";
		}

		if (userService.getUserByEmail(email) == null) {
			return "redirect:/forgetpassword?email=false";
		}

		if (pwdStatus != null) {
			model.addAttribute("pwdstatus", pwdStatus);
		}

		model.addAttribute("email", email);
		model.addAttribute("user", new User());
		return "resetpassword";
	}

	@PostMapping("/resetpassword")
	public String resetNewPassword(@RequestParam("email") String email, @RequestParam("password") String password,
			Model model) {

		User user = userService.getUserByEmail(email);
		if (user == null) {
			return "redirect:/forgetpassword?email=false";
		}
		if (passwordEncoder.matches(password, user.getPassword())) {
			return "redirect:/newpassword?email=" + email;
		}
		return "redirect:/resetpassword?email=" + email + "&pwdstatus=false";
	}

	@GetMapping("/newpassword")
	public String newPassword(@RequestParam("email") String email,
			@RequestParam(value = "pwdstatus", required = false) String pwdStatus,
			@RequestParam(value = "update", required = false) String updateStatus,
			@RequestParam(value = "pwdequals", required = false) String pwdEquals, Model model) {

		if (pwdStatus != null) {
			model.addAttribute("pwdstatus", pwdStatus);
		}

		if (updateStatus != null) {
			model.addAttribute("update", updateStatus);
		}

		if (pwdEquals != null) {
			model.addAttribute("pwdequals", pwdEquals);
		}

		model.addAttribute("email", email);
		model.addAttribute("user", new User());
		return "newpassword";
	}

	@PostMapping("/newpassword")
	public String storeNewPassword(@RequestParam("email") String email, @RequestParam("password") String password,
			@RequestParam("confirmPassword") String confirmPassword, Model model) {

		if (password.isEmpty() || confirmPassword.isEmpty()) {
			return "redirect:/newpassword?email=" + email + "&pwdstatus=false";
		}
		if (password.equals(confirmPassword)) {
			User user = userService.getUserByEmail(email);
			if (user == null) {
				return "redirect:/forgetpassword?email=false";
			}
			user.setPassword(passwordEncoder.encode(password));
			if (userService.saveOrUpdate(user) == null) {
				return "redirect:/newpassword?update=false";
			}
			return "redirect:/?login";
		}
		return "redirect:/newpassword?email=" + email + "&pwdequals=false";
	}

}
