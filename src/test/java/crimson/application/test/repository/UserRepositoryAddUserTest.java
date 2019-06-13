package crimson.application.test.repository;

import static org.assertj.core.api.Assertions.assertThat;

import javax.validation.ConstraintViolationException;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import crimson.application.model.User;
import crimson.application.repository.UserRepository;

@RunWith(SpringRunner.class)
@DataJpaTest(showSql = true)
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Transactional(propagation = Propagation.NOT_SUPPORTED)
public class UserRepositoryAddUserTest {

	@Autowired
	private UserRepository userRepository;

	private User user;

	@Before
	public void setUp() {
		user = new User();
		user.setUsername("kasi reddy");
		user.setEmail("kasi@gmail.com");
		user.setMobile("9807654222");
		user.setPassword("P@ssw0rd#123");
		user.setConfirmPassword("P@ssw0rd#123");
		user.setRole("ROLE_USER");
		user.setIsActive(true);
	}

	@Test
	@Transactional(propagation = Propagation.REQUIRED)
	public void addTestWithAllPropertiesIntialized() {
		assertThat(userRepository.save(user)).isNotNull();
	}

	@Test(expected = TransactionException.class)
	public void addTestWithUsernameNullValue() {
		user.setUsername(null);
		assertThat(userRepository.save(user)).extracting("userId").isNotNull();
	}

	@Test(expected = TransactionException.class)
	public void addTestWithEmailNullValue() {
		user.setEmail(null);
		assertThat(userRepository.save(user)).extracting("userId").isNotNull();
	}

	@Test(expected = TransactionException.class)
	public void addTestWithMobileNullValue() {
		user.setMobile(null);
		assertThat(userRepository.save(user)).extracting("userId").isNotNull();
	}

	@Test(expected = TransactionException.class)
	public void addTestWithPasswordNullValue() {
		user.setPassword(null);
		assertThat(userRepository.save(user)).extracting("userId").isNotNull();
	}

	@Test(expected = TransactionException.class)
	public void addTestWithRoleNullValue() {
		user.setRole(null);
		assertThat(userRepository.save(user)).extracting("userId").isNotNull();
	}

	@Test(expected = DataIntegrityViolationException.class)
	public void addTestWithDuplicateUsername() {
		userRepository.save(this.user);
		User user = new User();
		user.setUsername("kasi reddy");
		user.setEmail("lakshmi@gmail.com");
		user.setMobile("8760954321");
		user.setPassword("P@ssw0rd#123");
		user.setConfirmPassword("P@ssw0rd#123");
		user.setRole("ROLE_USER");
		user.setIsActive(true);
		assertThat(userRepository.save(user)).extracting("userId").isNotNull();
	}

	/*
	 * @Test(expected = TransactionException.class) public void
	 * addTestWithDuplicateEmail() { userRepository.save(this.user); User user=new
	 * User(); user.setUsername("ravi"); user.setEmail("lakshmi@gmail.com");
	 * user.setMobile("8760954322"); user.setPassword("P@ssw0rd#123");
	 * user.setConfirmPassword("P@ssw0rd#123"); user.setRole("ROLE_USER");
	 * user.setIsActive(true);
	 * assertThat(userRepository.save(user)).extracting("userId").isNotNull(); }
	 * 
	 * 
	 * @Test(expected = TransactionException.class) public void
	 * addTestWithDuplicateMobile() { userRepository.save(this.user); User user=new
	 * User(); user.setUsername("ravi"); user.setEmail("lakshmi@gmail.com");
	 * user.setMobile("8760954322"); user.setPassword("P@ssw0rd#123");
	 * user.setConfirmPassword("P@ssw0rd#123"); user.setRole("ROLE_USER");
	 * user.setIsActive(true);
	 * assertThat(userRepository.save(user)).extracting("userId").isNotNull(); }
	 */

}
