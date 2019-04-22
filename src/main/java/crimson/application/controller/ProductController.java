package crimson.application.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import crimson.application.dao.ProductRepository;
import crimson.application.model.Product;
import crimson.application.service.Validation;

@Controller
@RequestMapping("/admin")
public class ProductController {

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private Validation validation;

	@GetMapping("/productform")
	public String productForm(Model model) {
		model.addAttribute("product", new Product());
		return "productform";
	}

	@PostMapping("/addproduct")
	public String addproduct(@Valid @ModelAttribute("product") Product product, Errors errors, Model model,
			HttpServletRequest request) {
		if (errors.hasErrors()) {
			return "productform";
		}
		Map<String, String> error_messages = validation.productExistenceValidation(product);
		if (error_messages.size() > 0) {
			model.addAttribute("error_messages", error_messages);
			return "productform";
		}

		productRepository.save(product);

		if (!product.getProductImage().isEmpty()) {
			try {
				saveImage(product, request);
			} catch (IOException e) {
				model.addAttribute("image_error", "image is not saved try again");
				return "productform";
			}
		}

		return "redirect:/admin/productform";
	}

	private void saveImage(Product product, HttpServletRequest request) throws IOException {
		InputStream inputStream = product.getProductImage().getInputStream();
		byte[] array = new byte[inputStream.available()];
		inputStream.read(array);

		String contextPath = request.getServletContext().getRealPath("/");

		File productImagesFolder = new File(contextPath + "/resources/images/products/");

		if (!productImagesFolder.exists()) {
			productImagesFolder.mkdirs();
		}

		FileOutputStream outputStream = new FileOutputStream(
				productImagesFolder.getPath() + "/" + product.getId() + ".jpg");

		outputStream.write(array);
		outputStream.flush();
		outputStream.close();

	}

}
