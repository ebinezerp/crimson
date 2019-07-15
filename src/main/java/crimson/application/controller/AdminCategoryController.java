package crimson.application.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import crimson.application.model.Category;
import crimson.application.service.CategoryService;

@Controller
public class AdminCategoryController {

	@Autowired
	private CategoryService categoryService;
	
	
	@Value("${catimage.location}")
	private String catImageLocation;

	@GetMapping("/category")
	public String category(@RequestParam(name = "id", required = false) Long id, Model model) {

		if (id == null) {
			model.addAttribute("category", new Category());
		} else {
			model.addAttribute("category", categoryService.getCategory(id));
		}
		model.addAttribute("categorymenu", "active");
		model.addAttribute("categories", categoryService.getCategories());
		return "category";
	}

	@PostMapping("/category")
	public String addCategory(@Valid @ModelAttribute Category category, Errors errors,HttpServletRequest request) {

		if (errors.hasErrors()) {
			System.out.println(errors.getErrorCount());
			return "category";
		}

		System.out.println("no errors");

		if(categoryService.saveCategory(category)==null) {
			return "redirect:/category";
		}
		System.out.println("Category Saved");
		
		if(category.getCatImage()!=null && !category.getCatImage().isEmpty()) {
			try {
				saveCatImage(category, request);
			} catch (Exception e) {
				e.printStackTrace();
				categoryService.deleteCategory(category);
				
			}
		}
			
		return "redirect:/category";
	}
	
	
	public void saveCatImage(Category category,HttpServletRequest request) throws Exception{
		
		InputStream inputStream = category.getCatImage().getInputStream();
		byte[] array = new byte[inputStream.available()];
		inputStream.read(array);

		File catImagesFolder = new File(catImageLocation);

		if (!catImagesFolder.exists()) {
			catImagesFolder.mkdirs();
		}

		final FileOutputStream outputStream = new FileOutputStream(
				catImagesFolder.getPath() + "/" + category.getCategoryId() + ".jpg");

		outputStream.write(array);
		outputStream.flush();
		outputStream.close();
		
	}

}
