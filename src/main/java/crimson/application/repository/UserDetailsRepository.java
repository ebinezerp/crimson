package crimson.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.UserCategory;
import crimson.application.model.UserDetails;

public interface UserDetailsRepository extends JpaRepository<UserDetails, Long> {
	
	public List<UserDetails> findByUserCategory(UserCategory userCategory);
}
