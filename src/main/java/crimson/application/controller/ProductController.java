package crimson.application.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crimson.application.model.Product;
import crimson.application.service.ProductService;
import crimson.application.util.Validation;

@Controller
@RequestMapping("/admin")
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private Validation validation;
	
	@Value("${image.location}")
	private String imageLocation;

	@GetMapping("/productform")
	public String productForm(@RequestParam( value ="status", required = false) Boolean status, Model model) {
		if (status != null) {
			model.addAttribute("status", status);
		}
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

		if (!product.getProductImage().isEmpty()) {
			if (productService.saveOrUpdate(product) == null) {
				model.addAttribute("product_save_status", false);
				return "productform";
			}
			try {
				saveImage(product, request);
			} catch (IOException e) {
				e.printStackTrace();
				model.addAttribute("image_error", "image is not saved try again");
				productService.delete(product.getId());
				return "productform";
			}
		} else {
			model.addAttribute("image_error", "Insert image. Image is mandatory");
			return "productform";
		}

		return "redirect:/admin/productform?status=true";
	}

	@GetMapping("/editproduct/{id}")
	public String edidProductFormPage(@PathVariable("id") Long id, Model model) {
		Product product = productService.getProduct(id);
		
		System.out.println("ProductValue: "+ product);
		
		
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

		if (productService.saveOrUpdate(product) == null) {
			model.addAttribute("update_status", false);
			return "editproduct";
		}

		if (!product.getProductImage().isEmpty()) {
			try {
				saveImage(product, request);
			} catch (IOException e) {
				e.printStackTrace();
				model.addAttribute("image_error", "image is not saved try again");
				productService.delete(product.getId());
				return "productform";
			}
		}

		return "redirect:/products";

	}

	@GetMapping("/disable/{id}")
	public String disableProduct(@PathVariable("id") Long id, Model model) {
		Product product = productService.getProduct(id);

		if (product == null) {
			return "redirect:/products?disable=false";
		}

		product.setStatus(false);

		if (productService.saveOrUpdate(product) == null) {
			return "redirect:/products?disable=false";
		}
		return "redirect:/products?disable=true";

	}

	private void saveImage(Product product, HttpServletRequest request) throws IOException {
		InputStream inputStream = product.getProductImage().getInputStream();
		byte[] array = new byte[inputStream.available()];
		inputStream.read(array);
		
		
		System.out.println("Context Path:"+request.getContextPath());
		System.out.println(request.getServletContext().getRealPath("/"));
		
		File productImagesFolder = new File(imageLocation);

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
