package crimson.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.Category;
import crimson.application.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	public Product findProductByProductName(String productName);
	public Product findProductByProductNameAndIdNot(String productName,Long id);
	public List<Product> findAllByStatusIsTrue();
	public List<Product> findTop8ByStatusIsTrueOrderById();
	public List<Product> findAllByCategory(Category category);
}
