package crimson.application.test.repository;

import static org.assertj.core.api.Assertions.assertThat;

import javax.validation.ConstraintViolationException;

import org.junit.Before;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionSystemException;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import crimson.application.model.User;
import crimson.application.repository.UserRepository;
import crimson.application.util.UserTestUtil;

@RunWith(SpringRunner.class)
@DataJpaTest(showSql = true)
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Transactional
public class UserRepositoryAddUserTest {

	@Autowired
	private UserRepository userRepository;

	private User user;

	@Before
	public void setUp() {
		user = UserTestUtil.newUser();
	}

	/*
	 * @Test public void addTestWithAllPropertiesIntialized() {
	 * assertThat(userRepository.save(user)).isNotNull(); }
	 * 
	 * @Test(expected = TransactionException.class)
	 * 
	 * @Transactional(propagation = Propagation.NOT_SUPPORTED) public void
	 * addTestWithUsernameNullValue() { user.setUsername(null);
	 * assertThat(userRepository.save(user)).extracting("userId").isNotNull(); }
	 * 
	 * @Test(expected = TransactionException.class)
	 * 
	 * @Transactional(propagation = Propagation.NOT_SUPPORTED) public void
	 * addTestWithEmailNullValue() { user.setEmail(null);
	 * assertThat(userRepository.save(user)).extracting("userId").isNotNull(); }
	 * 
	 * @Test(expected = TransactionException.class)
	 * 
	 * @Transactional(propagation = Propagation.NOT_SUPPORTED) public void
	 * addTestWithMobileNullValue() { user.setMobile(null);
	 * assertThat(userRepository.save(user)).extracting("userId").isNotNull(); }
	 * 
	 * @Test(expected = TransactionException.class)
	 * 
	 * @Transactional(propagation = Propagation.NOT_SUPPORTED) public void
	 * addTestWithPasswordNullValue() { user.setPassword(null);
	 * assertThat(userRepository.save(user)).extracting("userId").isNotNull(); }
	 * 
	 * @Test(expected = TransactionException.class)
	 * 
	 * @Transactional(propagation = Propagation.NOT_SUPPORTED) public void
	 * addTestWithRoleNullValue() { user.setRole(null);
	 * assertThat(userRepository.save(user)).extracting("userId").isNotNull(); }
	 */

	@Test
	public void addTestWithDuplicateUsername() {
		User user = UserTestUtil.anotherNewUser();
		assertThat(userRepository.save(this.user)).extracting("userId").isNotNull();
		user.setUsername(this.user.getUsername());
		assertThat(userRepository.save(user)).extracting("userId").isNotNull();
	}
	
	@Test
	public void addTestWithDuplicateEmail() {
		User user = UserTestUtil.anotherNewUser();
		assertThat(userRepository.save(this.user)).extracting("userId").isNotNull();
		user.setEmail(this.user.getEmail());
		assertThat(userRepository.save(user)).extracting("userId").isNotNull();
	}

}
