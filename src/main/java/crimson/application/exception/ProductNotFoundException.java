package crimson.application.exception;

public class ProductNotFoundException extends RuntimeException {
	
	private Long productId;
	
	public ProductNotFoundException(Long productId) {
		this.productId = productId;
	}
	
	public ProductNotFoundException() {}
	
	@Override
	public String getMessage() {
		return productId+" is not existed";
	}
}
