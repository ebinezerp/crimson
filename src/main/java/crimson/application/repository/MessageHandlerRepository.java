package crimson.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.ContactMessage;
import crimson.application.model.MessageHandler;
import crimson.application.model.User;

public interface MessageHandlerRepository extends JpaRepository<MessageHandler, Long> {
	public List<ContactMessage> findAllByHandledBy(User user);
}
