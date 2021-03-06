package crimson.application.service;

import java.util.List;

import javax.persistence.RollbackException;
import javax.validation.ConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import crimson.application.exception.UserNotFoundException;
import crimson.application.model.User;
import crimson.application.model.UserPrincipal;
import crimson.application.repository.UserRepository;

@Service
public class UserService implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	public User saveOrUpdate(User user) {
		try {
			return userRepository.save(user);
		} catch (RollbackException e) {
			System.err.println("handled");
			e.printStackTrace();
			return null;
		}
	}
	
	
	public User update(User user) {
		try {
			System.err.println(user);
			return userRepository.saveAndFlush(user);
		}catch(Exception e) {
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
			return userRepository.findById(id).get();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public User getUserByEmail(String email) {
		try {
			return userRepository.findUserByEmail(email);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<User> getAllUserByRole(String role) {
		try {
			return userRepository.findUserByRole(role);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public User getUser(String username) {
		try {
			return userRepository.findUserByUsername(username);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public User getUserByMobile(String mobile) {
		try {
			return userRepository.findUserByMobile(mobile);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public User getUserByUsernameAndUserIdNot(String username, Long userId) {
		try {
			return userRepository.findUserByUsernameAndUserIdNot(username, userId);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public User getUserByEmailAndUserIdNot(String email, Long userId) {
		try {
			return userRepository.findUserByEmailAndUserIdNot(email, userId);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public User getUserByMobileAndUserIdNot(String mobile, Long userId) {
		try {
			return userRepository.findUserByMobileAndUserIdNot(mobile, userId);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public User getUser(String email, String password, String role) {
		try {
			return userRepository.findUserByEmailAndPasswordAndRole(email, password, role);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public UserDetails loadUserByUsername(String usernameOrEmail) throws UsernameNotFoundException {
		// Let people login with either username or email
		try {
			User user = userRepository.findByUsernameOrEmail(usernameOrEmail, usernameOrEmail);
			return UserPrincipal.create(user);
		} catch (Exception e) {
			throw new UserNotFoundException(usernameOrEmail);
		}

	}
	
	// This method is used by JWTAuthenticationFilter
    @Transactional
    public UserDetails loadUserById(Long id) {
        User user = userRepository.findById(id).orElseThrow(
            () -> new UsernameNotFoundException("User not found with id : " + id)
        );

        return UserPrincipal.create(user);
    }

}
