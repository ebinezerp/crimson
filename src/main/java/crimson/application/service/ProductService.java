package crimson.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.Product;
import crimson.application.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;

	public Product saveOrUpdate(Product product) {
		try {
			return productRepository.save(product);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean delete(Long productId) {
		try {
			productRepository.deleteById(productId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public Product getProduct(Long productId) {
		try {
			return productRepository.findById(productId).get();
		} catch (Exception e) {
			System.out.println("Entered into execption");
			e.printStackTrace();
			return null;
		}
	}

	public Product getProduct(String name) {
		try {
			return productRepository.findProductByProductName(name);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<Product> getActiveProducts() {
		try {
			return productRepository.findAllByStatusIsTrue();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public Product isProductNameExistsForOtherThanGivenId(String name, Long productId) {
		try {
			return productRepository.findProductByProductNameAndIdNot(name, productId);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<Product> top10Products() {
		try {
			return productRepository.findTop8ByStatusIsTrueOrderById();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public List<Product> recentProducts(){
		try {
			return productRepository.findTop8ByStatusIsTrueOrderById();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
