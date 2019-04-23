package crimson.application.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import crimson.application.dao.CartRepository;
import crimson.application.dao.ProductRepository;
import crimson.application.dao.UserRepository;
import crimson.application.model.Product;
import crimson.application.model.User;

@Controller
public class HomeController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private ProductRepository productRepository;
	
	
	@Autowired
	private CartRepository cartRepository;

	@GetMapping("/")
	public String indexPage(Model model, HttpServletRequest request, Principal principal,HttpSession session) {

		model.addAttribute("user", new User());

		if (principal != null) {
			User user = userRepository.findUserByEmail(principal.getName());
			if (user.getRole().equalsIgnoreCase("ROLE_OWNER")) {
				return "redirect:/owner";
			} else if (user.getRole().equalsIgnoreCase("ROLE_ADMIN")) {
				return "redirect:/products";
			}
			session.setAttribute("cart_count", cartRepository.findCartByUser(user).getQuantity());
		}
		
		return "index";
	}

	@GetMapping("/products")
	public String getProducts(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("products", productRepository.findAllByStatusIsTrue());
		return "products";
	}
	
	@GetMapping("/prod_details/{id}")
	public String productDetails(@PathVariable("id")Long id,Model model) {
		model.addAttribute("user",new User());
		Product product=productRepository.getOne(id);
		if(product==null) {
			return "redirect:/products?status=false";
		}else {
			model.addAttribute("product", product);
			return "productdetails";
		}
	}

}
