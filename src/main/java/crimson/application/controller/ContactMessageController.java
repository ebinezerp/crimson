package crimson.application.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import crimson.application.model.ContactMessage;
import crimson.application.model.User;
import crimson.application.repository.ContactMessageRepository;
import crimson.application.repository.MessageHandlerRepository;

@Controller
public class ContactMessageController {

	@Autowired
	private ContactMessageRepository contactMessageRepository;

	@Autowired
	private MessageHandlerRepository messageHandlerRepository;

	@GetMapping("/contact")
	public String contact(Model model,
			@RequestParam(name = "messageSentStatus", required = false) Boolean messsageStatus) {
		model.addAttribute("user", new User());
		model.addAttribute("contactMessage", new ContactMessage());
		if (messsageStatus != null) {
			model.addAttribute("messageSentStatus", messsageStatus);
		}
		return "contact";
	}

	@PostMapping("/send")
	public String sendMessageToAdmin(@Valid @ModelAttribute("contactMessage") ContactMessage contactMessage,
			Errors errors, RedirectAttributes redirectAttributes, Model model) {

		if (errors.hasErrors()) {
			model.addAttribute("user", new User());
			return "contact";
		}
		Boolean messageStatus = false;
		if (contactMessageRepository.save(contactMessage) != null) {
			messageStatus = true;
		}

		return "redirect:/contact?messageSentStatus=" + messageStatus;
	}

	@GetMapping("/admin/contacts")
	public String contactMessages(Model model) {

		try {
			List<ContactMessage> contacts = contactMessageRepository.findAll();
			model.addAttribute("contacts", contacts);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "contactmessages";
	}

}
