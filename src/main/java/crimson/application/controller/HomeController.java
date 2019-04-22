package crimson.application.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import crimson.application.dao.ProductRepository;
import crimson.application.dao.UserRepository;
import crimson.application.model.User;

@Controller
public class HomeController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private ProductRepository productRepository;

	@GetMapping("/")
	public String indexPage(Model model, HttpServletRequest request, Principal principal) {

		model.addAttribute("user", new User());

		if (principal != null) {
			User user = userRepository.findUserByEmail(principal.getName());
			if (user.getRole().equalsIgnoreCase("ROLE_OWNER")) {
				return "redirect:/owner";
			} else if (user.getRole().equalsIgnoreCase("ROLE_ADMIN")) {
				return "redirect:/products";
			}
		}
		return "index";
	}

	@GetMapping("/products")
	public String getProducts(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("products", productRepository.findAll());
		return "products";
	}

}
