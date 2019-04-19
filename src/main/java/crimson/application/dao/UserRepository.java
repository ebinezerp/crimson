package crimson.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

}
