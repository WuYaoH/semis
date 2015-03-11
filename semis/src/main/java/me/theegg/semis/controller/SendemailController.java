package me.theegg.semis.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import me.theegg.semis.domain.Vips;
import me.theegg.semis.domain.Email;
import me.theegg.semis.repository.EmailRepository;
import me.theegg.semis.repository.VipsRepository;
import me.theegg.tools.OrderMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SendemailController {

	@Autowired
	OrderMessage ordermessage;
	@Autowired
	VipsRepository vipsRepository;
	@Autowired
	private EmailRepository emailRepository;

	@Autowired
	public SendemailController(EmailRepository emailRepertory) {
		this.emailRepository = emailRepertory;
	}

	@RequestMapping(value = "sendemail", method = RequestMethod.GET)
	String sendEmailpage() {
		return "sendemail";
	}

	@RequestMapping(value = "sendemail", method = RequestMethod.POST)
	String sendEmail(@RequestParam("subject") String subject,
			@RequestParam("mainmessage") String mainMessage) {
		List<Vips> list = vipsRepository.findAll();
		for (int i = 0; i < list.size(); i++) {
			String email = list.get(i).getEmail();
			ordermessage.placeOrder(email, subject, mainMessage);
		}
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");// 可以方便地修改日期格式
		String sendtime = dateFormat.format(now);
		System.out.println(sendtime);
		emailRepository.save(new Email(sendtime, subject, mainMessage));

		return "redirect:/success.html";
	}

	@RequestMapping(value = "/listemail", method = RequestMethod.GET)
	String listVips(Model model) {
		List<Email> email = emailRepository.findAll();
		model.addAttribute("emails", email);
		return "listemail";
	}

	@RequestMapping(value = "/detailemail", method = RequestMethod.GET)
	String detailEmail(@RequestParam("emailid") Email email, Model model) {
		model.addAttribute("email", email);
		return "detailemail";
	}

	@RequestMapping(value = "/deleteemail/{emailid}", method = RequestMethod.GET)
	String deleteEmail(@PathVariable("emailid") Email email) {
		emailRepository.delete(email);
		return "redirect:../listemail";
	}

}
