package crimson.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.UserCategory;
import crimson.application.model.UserDetails;
import crimson.application.repository.UserDetailsRepository;

@Service
public class UserDetailsService {

	@Autowired
	private UserDetailsRepository userDetailsRepository;

	public UserDetails save(UserDetails userDetails) {
		try {
			return userDetailsRepository.saveAndFlush(userDetails);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public UserDetails update(UserDetails userDetails) {
		try {
			return userDetailsRepository.saveAndFlush(userDetails);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public UserDetails get(Long id) {
		try {
			return userDetailsRepository.findById(id).get();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<UserDetails> getUserDetails() {
		try {
			return userDetailsRepository.findAll();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<UserDetails> get(UserCategory userCategory) {
		try {
			return userDetailsRepository.findByUserCategory(userCategory);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
