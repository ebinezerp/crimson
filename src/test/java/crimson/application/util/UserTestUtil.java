package crimson.application.util;

import crimson.application.model.User;


public class UserTestUtil {
	
   public static User newUser() {
	   	User user = new User();
		user.setUsername("kasi reddy");
		user.setEmail("kasi@gmail.com");
		user.setMobile("9807654222");
		user.setPassword("P@ssw0rd#123");
		user.setConfirmPassword("P@ssw0rd#123");
		user.setRole("ROLE_USER");
		user.setIsActive(true);
		return user;
   }	
   
   
   public static User anotherNewUser() {
	   	User user = new User();
		user.setUsername("Yashwanth");
		user.setEmail("yashwanth@gmail.com");
		user.setMobile("9878903421");
		user.setPassword("P@ssw0rd#123");
		user.setConfirmPassword("P@ssw0rd#123");
		user.setRole("ROLE_USER");
		user.setIsActive(true);
		return user;
  }	

}
