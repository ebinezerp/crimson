package crimson.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import crimson.application.model.Category;
import crimson.application.repository.CategoryRepository;

@Service
@Transactional
public class CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	public Category saveCategory(Category category) {

		try {
			return categoryRepository.save(category);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public Category updateCategory(Category category) {
		try {
			return categoryRepository.save(category);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public Category getCategory(Long id) {
		try {
			return categoryRepository.getOne(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<Category> getCategories() {
		try {
			return categoryRepository.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public boolean deleteCategory(Category category) {
		
		try {
			categoryRepository.delete(category);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

}
