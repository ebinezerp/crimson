package crimson.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	public Product findProductByProductName(String productName);
}
