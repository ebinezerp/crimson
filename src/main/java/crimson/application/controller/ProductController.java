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
import org.springframework.web.bind.annotation.PathVariable;
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
		} else {
			model.addAttribute("image_error", "Insert image. Image is mandatory");
			return "productform";
		}

		return "redirect:/admin/productform";
	}

	@GetMapping("/editproduct/{id}")
	public String edidProductFormPage(@PathVariable("id") Long id, Model model) {
		Product product = productRepository.getOne(id);
		if (product == null) {
			model.addAttribute("editproduct_error", "Product is not available");
			return "redirect:/products";
		}

		model.addAttribute("product", product);
		return "editproduct";
	}

	@PostMapping("/updateproduct")
	public String updateProduct(@Valid @ModelAttribute("product") Product product, Errors errors, Model model,
			HttpServletRequest request) {
		if (errors.hasErrors()) {
			return "editproduct";
		}
		Map<String, String> error_messages = validation.productUpdateValidation(product);
		if (error_messages.size() > 0) {
			model.addAttribute("error_messages", error_messages);
			return "editproduct";
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

		return "redirect:/products";

	}

	@GetMapping("/disable/{id}")
	public String disableProduct(@PathVariable("id") Long id, Model model) {
		Product product = productRepository.getOne(id);

		if (product == null) {
			model.addAttribute("product_error", "Product is not existed");
		}

		product.setStatus(false);
		productRepository.save(product);
		return "redirect:/products";

	}

	private void saveImage(Product product, HttpServletRequest request) throws IOException {
		InputStream inputStream = product.getProductImage().getInputStream();
		byte[] array = new byte[inputStream.available()];
		inputStream.read(array);

		String contextPath = request.getServletContext().getContextPath();

		System.out.println("This my context Path:.."+contextPath);
		File productImagesFolder = new File(contextPath + "/resources/images/products/");
		System.out.println("This is File Manager:.."+productImagesFolder.getPath());
		
		
		if (!productImagesFolder.exists()) {
			productImagesFolder.mkdirs();
		}

		final FileOutputStream outputStream = new FileOutputStream(
				productImagesFolder.getPath() + "/" + product.getId() + ".jpg");

		outputStream.write(array);
		outputStream.flush();
		outputStream.close();

	}

}
