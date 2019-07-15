package crimson.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

}
