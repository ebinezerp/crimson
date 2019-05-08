package crimson.application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.User;
import crimson.application.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	
	public User saveOrUpdate(User user) {
		try {
			return userRepository.save(user);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public boolean deleteUser(User user) {
		try {
			userRepository.delete(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	public boolean deleteUserById(Long id) {
		try {
			userRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	public User getUserById(Long id) {
		try {
			return userRepository.getOne(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

}
