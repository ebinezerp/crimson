package crimson.application.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import crimson.application.model.Category;
import crimson.application.model.Product;
import crimson.application.service.CategoryService;
import crimson.application.service.ProductService;

@RestController
@RequestMapping("/api")
@CrossOrigin("*")
public class ApiCategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	
	@GetMapping("/category")
	public ResponseEntity<List<Category>> getCategories(){
		return new ResponseEntity<List<Category>>(categoryService.getCategories(), HttpStatus.OK);
	}
	
	@GetMapping("/category/{id}")
	public ResponseEntity<List<Product>> getCategoryProducts(@PathVariable("id")Long categoryId){
		return new ResponseEntity<List<Product>>(productService.getProducts(categoryService.getCategory(categoryId)),HttpStatus.OK);
	}

}
