package crimson.application.util;

import java.util.Random;

import org.springframework.stereotype.Service;


@Service
public class RandomPasswordGenerator {

	public String generatePassword() {
		byte len = 10;
		String capChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		String smallChars = "abcdefghijklmnopqrstuvwxyz";
		String numbers = "0123456789";
		String symbols = "!@#$%^&*_=+-/.?<>)";

		String values = capChars + smallChars + numbers + symbols;

		// Using random method
		Random randomMethod = new Random();

		char[] password = new char[len];

		for (int i = 0; i < len; i++) {
			// Use of charAt() method : to get character value
			// Use of nextInt() as it is scanning the value as int
			password[i] = values.charAt(randomMethod.nextInt(values.length()));

		}
		return String.valueOf(password);
	}
}
