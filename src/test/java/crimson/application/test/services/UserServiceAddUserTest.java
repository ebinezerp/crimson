package crimson.application.test.services;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import crimson.application.FrontendApplication;
import crimson.application.model.User;
import crimson.application.service.UserService;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = { FrontendApplication.class })
public class UserServiceAddUserTest {

	@Autowired
	private UserService userService;

	private User user;

	@Before
	public void setUp() {
		user = new User();
		user.setUsername("kasi");
		user.setEmail("kasi@gmail.com");
		user.setMobile("9807654222");
		user.setPassword("P@ssw0rd#123");
		user.setConfirmPassword("P@ssw0rd#123");
		user.setRole("ROLE_USER");
		user.setIsActive(true);
	}

	@Test
	@Transactional
	public void addTestWithAllPropertiesIntialized() {
		assertThat(userService.saveOrUpdate(user)).isNotNull();
	}
	
	@Test
	@Transactional
	public void addTestWithUsernameNullValue() {
		user.setUsername(null);
		assertThat(userService.saveOrUpdate(user)).isNull();
	}

}
