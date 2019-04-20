package crimson.application;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(classes=FrontendApplication.class)
public class UserTest {

	@Test
	public void test() {
		assertTrue(true);
	}
}
