package crimson.application;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.PasswordEncoder;

import crimson.application.model.User;

@SpringBootApplication(scanBasePackages="crimson.application")
public class FrontendApplication {
	
	
	public static void main(String[] args) {
		SpringApplication.run(FrontendApplication.class, args);
	}


}
