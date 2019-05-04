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

import crimson.application.model.Product;
import crimson.application.repository.ProductRepository;
import crimson.application.util.Validation;

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
				e.printStackTrace();
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
				e.printStackTrace();
				model.addAttribute("image_error", "image is not saved try again");
				productRepository.deleteById(product.getId());
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

		
		File productImagesFolder = new File(request.getServletContext().getContextPath()+"/resources/images/");
		
		
		if (!productImagesFolder.exists()) {
		
			productImagesFolder.mkdirs();
			System.out.println("folder created");
		}
		
		System.out.println(productImagesFolder.exists());

		final FileOutputStream outputStream = new FileOutputStream(
				productImagesFolder.getPath() + "/" + product.getId() + ".jpg");

		 System.out.println("outputstream is created");
		outputStream.write(array);
		outputStream.flush();
		outputStream.close();
		System.out.println("finished");

	}

}
