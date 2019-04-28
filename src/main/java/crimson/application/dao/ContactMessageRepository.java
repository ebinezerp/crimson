package crimson.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import crimson.application.model.ContactMessage;

public interface ContactMessageRepository extends JpaRepository<ContactMessage, Long> {
}
