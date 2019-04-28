package crimson.application.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.dao.ContactMessageRepository;
import crimson.application.model.ContactMessage;

@Service
public class ContactMessageService {

	@Autowired
	private ContactMessageRepository contactMessageRepositoty;

	public ContactMessage saveOrUpdate(ContactMessage contactMessage) {
		try {
			return contactMessageRepositoty.save(contactMessage);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public Boolean delete(ContactMessage contactMessage) {
		try {
			contactMessageRepositoty.delete(contactMessage);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	public ContactMessage getContactMessageById(Long id) {
		try {
			return contactMessageRepositoty.getOne(id);
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
