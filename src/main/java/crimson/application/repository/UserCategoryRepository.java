package crimson.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.UserCategory;

public interface UserCategoryRepository extends JpaRepository<UserCategory, Long> {

	public UserCategory findByCategoryName(String categoryName);

	public UserCategory findByCategoryNameAndIdNot(String categoryName, Long id);
}
