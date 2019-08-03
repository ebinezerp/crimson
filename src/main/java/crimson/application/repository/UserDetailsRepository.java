package crimson.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.UserDetails;

public interface UserDetailsRepository extends JpaRepository<UserDetails, Long> {
}
