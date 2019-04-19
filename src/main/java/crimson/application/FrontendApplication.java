package crimson.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages="crimson.application")
public class FrontendApplication {

	public static void main(String[] args) {
		SpringApplication.run(FrontendApplication.class, args);
	}

}
