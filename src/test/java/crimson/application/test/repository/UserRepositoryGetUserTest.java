package crimson.application.test.repository;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.NoSuchElementException;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import crimson.application.model.User;
import crimson.application.repository.UserRepository;
import crimson.application.util.UserTestUtil;

@RunWith(SpringRunner.class)
@DataJpaTest(showSql = true)
@AutoConfigureTestDatabase(replace = Replace.NONE)
public class UserRepositoryGetUserTest {

	@Autowired
	private UserRepository userRepository;

	private User user;

	@Before
	public void setup() {
		user = UserTestUtil.newUser();
		userRepository.save(user);
	}

	@Test
	public void getUserTest() {
		User user = userRepository.findById(this.user.getUserId()).get();
		assertThat(user).isNotNull();
		assertThat(user).extracting("username").toString().equals(this.user.getUsername());
	}

	@Test(expected = NoSuchElementException.class)
	@Transactional
	public void getUserTestWithInvalidId() {
		User user = userRepository.findById(200L).get();
		assertThat(user).isNull();
	}

	@Test
	public void getUserTestWithEmail() {
		User user = userRepository.findUserByEmail(this.user.getEmail());
		assertThat(user).isNotNull();
		assertThat(user).extracting("username").toString().equals(this.user.getUsername());
	}
	
	
	
	@Test
	@Transactional
	public void getUserTestWithWrongEmail() {
		User user = userRepository.findUserByEmail("myemail@gmail.com");
		assertThat(user).isNull();
	}

}
