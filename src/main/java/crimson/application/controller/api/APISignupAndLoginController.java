package crimson.application.controller.api;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import crimson.application.exception.InvalidCredentialsException;
import crimson.application.exception.UserExistenceException;
import crimson.application.exception.UserNotFoundException;
import crimson.application.model.LoginUser;
import crimson.application.model.User;
import crimson.application.service.UserService;
import crimson.application.util.Email;
import crimson.application.util.RandomPasswordGenerator;
import crimson.application.util.Validation;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api")
public class APISignupAndLoginController {

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
	public ResponseEntity<User> userRegister(@RequestBody @Valid User user, Errors errors, Model model,
			HttpServletRequest request) {

		if (errors.hasErrors()) {
			return new ResponseEntity<User>(HttpStatus.BAD_REQUEST);
		}

		user.setPassword(passwordEncoder.encode(user.getPassword()));

		Map<String, String> errorsMessages = validation.userExistenceValidation(user);

		if (errorsMessages.size() > 0) {
			throw new UserExistenceException(errorsMessages);
		}

		if (userService.saveOrUpdate(user) == null) {
			return new ResponseEntity<User>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return new ResponseEntity<User>(user, HttpStatus.OK);
	}

	@PostMapping("/authenticate")
	public ResponseEntity<User> authenticate(@RequestBody LoginUser loginUser, HttpSession session) {

		User user = userService.getUserByEmail(loginUser.getEmail());

		if (user == null) {
			throw new UserNotFoundException(loginUser);
		}

		if (!passwordEncoder.matches(loginUser.getPassword(), user.getPassword())) {
			throw new InvalidCredentialsException(loginUser);
		}

		session.setAttribute("email", user.getEmail());

		return new ResponseEntity<User>(user, HttpStatus.OK);
	}
	
	@GetMapping("/logout")
	public ResponseEntity<Boolean> logout(@RequestParam("email") String email,HttpSession session){
		if(session.getAttribute("email") != null) {
			System.out.println("Existed");
			if(session.getAttribute("email").toString().equals(email)) {
				System.out.println("Same");
				session.removeAttribute("email");
				return new ResponseEntity<Boolean>(true,HttpStatus.OK);
			}
		}
		return new ResponseEntity<Boolean>(true,HttpStatus.FORBIDDEN);
	}

	/*
	 * @GetMapping("/forgetpassword") public String
	 * forgetPassword(@RequestParam(value = "email", required = false) String
	 * emailExistStatus,
	 * 
	 * @RequestParam(value = "update_status", required = false) String updateStatus,
	 * Model model, HttpServletRequest request) { model.addAttribute("user", new
	 * User());
	 * 
	 * if (emailExistStatus != null) { model.addAttribute("user_exists_status",
	 * emailExistStatus); }
	 * 
	 * if (updateStatus != null) { model.addAttribute("update_status",
	 * updateStatus); }
	 * 
	 * return "forgetpassword"; }
	 */
	@PostMapping("/verifyemail")
	public ResponseEntity<Boolean> verifyemail(@RequestBody String email, HttpServletRequest request, Model model) {
		
		User user=userService.getUserByEmail(email);
		if(user == null) {
			throw new UsernameNotFoundException(email);
		}
		
		user.setPassword(randomPasswordGenerator.generatePassword());
		
		if(userService.saveOrUpdate(user) == null) {
			return new ResponseEntity<Boolean>(false,HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return new ResponseEntity<Boolean>(true,HttpStatus.OK);
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
