package crimson.application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crimson.application.model.ContactMessage;
import crimson.application.model.MessageHandler;
import crimson.application.model.User;
import crimson.application.repository.MessageHandlerRepository;
;
@Service
public class MessageHandlerService {
	
	@Autowired
	private MessageHandlerRepository messageHandlerRepository;
	
	public MessageHandler saveOrUpdate(MessageHandler messageHandler) {
		try {
			return messageHandlerRepository.save(messageHandler);
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean delete(MessageHandler messageHandler) {
		try {
			messageHandlerRepository.delete(messageHandler);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public boolean deleteById(Long id) {
		try {
			messageHandlerRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	
	public List<ContactMessage> messagesHandledBy(User user){
		try {
			return messageHandlerRepository.findAllByHandledBy(user);
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
}
