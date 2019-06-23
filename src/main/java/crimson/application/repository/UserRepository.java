package crimson.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import crimson.application.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	public User findUserByEmail(String email);
	public List<User> findUserByRole(String role);
	public User findUserByUsername(String username);
	public User findUserByMobile(String mobile);
	public User findUserByUsernameAndUserIdNot(String username,Long userId);
	public User findUserByEmailAndUserIdNot(String email,Long userId);
	public User findUserByMobileAndUserIdNot(String mobile,Long userId);
	public User findUserByEmailAndPasswordAndRole(String email,String password,String role);
}
