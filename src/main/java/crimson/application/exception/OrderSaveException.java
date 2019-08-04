package crimson.application.exception;

public class OrderSaveException extends RuntimeException{
	
	@Override
	public String getMessage() {
		return "Order Saved Exception";
	}
}
