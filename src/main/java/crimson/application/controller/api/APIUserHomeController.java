package crimson.application.controller.api;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import crimson.application.model.Product;
import crimson.application.model.User;
import crimson.application.service.CartService;
import crimson.application.service.ProductService;
import crimson.application.service.UserService;
import crimson.application.util.Validation;


@CrossOrigin(origins = "*")
@RequestMapping("/api")
@RestController
public class APIUserHomeController {

	@Autowired
	private UserService userService;

	@Autowired
	private ProductService productService;

	@Autowired
	private CartService cartService;

	@Autowired
	private Validation validation;

	@GetMapping("/products")
	public ResponseEntity<List<Product>> getProducts(HttpSession session) {
		return new ResponseEntity<List<Product>>(productService.getActiveProducts(),HttpStatus.OK);
	}

	@GetMapping("/prod_details/{id}")
	public String productDetails(@PathVariable("id") Long id, Model model) {
		model.addAttribute("user", new User());
		Product product = productService.getProduct(id);
		if (product == null) {
			return "redirect:/products?status=false";
		} else {
			model.addAttribute("product", product);
			model.addAttribute("top10Products", productService.top10Products());
			return "productdetails";
		}
	}

	@GetMapping("/aboutus")
	public String aboutUs(Model model) {
		model.addAttribute("user", new User());
		return "index";
	}

	@GetMapping("/profile")
	public String profile(Model model, HttpSession session) {
		model.addAttribute("user", session.getAttribute("reg_user"));
		return "profile";
	}

	@PostMapping("/profile")
	public String profileUpdate(@Valid @ModelAttribute("user") User user, Errors errors, Model model,
			HttpSession session, HttpServletRequest request, Principal principal) {
		if (errors.hasErrors()) {
			return "profile";
		}

		Map<String, String> errorMessages = validation.userUpdationValidation(user);
		if (errorMessages.size() > 0) {
			model.addAttribute("user", session.getAttribute("reg_user"));
			model.addAttribute("errorMessages", errorMessages);
			return "profile";
		}
		System.out.println(user.getPassword());
		userService.saveOrUpdate(user);
		// updateAuthentication.doLogin(user, request);
		session.setAttribute("reg_user", user);
		return "redirect:/profile";
	}

}
