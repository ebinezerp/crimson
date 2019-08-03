package crimson.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.UserCategory;
import crimson.application.repository.UserCategoryRepository;

@Service
public class UserCategoryService {

	@Autowired
	private UserCategoryRepository userCategoryRepository;

	public UserCategory save(UserCategory userCategory) {
		try {
			return userCategoryRepository.save(userCategory);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public UserCategory update(UserCategory userCategory) {
		try {
			return userCategoryRepository.saveAndFlush(userCategory);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<UserCategory> getUserCategories() {
		try {
			return userCategoryRepository.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public UserCategory get(String categoryName) {
		try {
			return userCategoryRepository.findByCategoryName(categoryName);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public UserCategory get(Long id) {
		try {
			return userCategoryRepository.findById(id).get();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public UserCategory getCategoryWithCategoryNameAndNotId(String categoryName, Long id) {
		try {
			return userCategoryRepository.findByCategoryNameAndIdNot(categoryName, id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
