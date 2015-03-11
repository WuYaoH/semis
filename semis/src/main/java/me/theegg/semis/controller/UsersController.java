package me.theegg.semis.controller;

import java.util.Collections;
import java.util.List;
import javax.validation.Valid;
import me.theegg.semis.domain.Authority;
import me.theegg.semis.domain.Users;
import me.theegg.semis.form.UsersForm;
import me.theegg.semis.repository.AuthorityRepository;
import me.theegg.semis.repository.UsersRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UsersController {
	private final UsersRepository usersRepository;

	@Autowired
	public UsersController(UsersRepository usersRepertory) {
		this.usersRepository = usersRepertory;
	}

	@Autowired
	AuthorityRepository authorityRepository;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	String loginPage() {
		return "login";
	}

	@RequestMapping({ "/", "/manage" })
	String manage() {
		return "manage";
	}

	// @RequestMapping(value = "/", method = RequestMethod.POST)
	// String login(@RequestParam("username") String username,
	// @RequestParam("password") String password, Model model) {
	// System.out.println(username);
	// System.out.println(password);
	// if (usersRepository.findByUsernameAndPassword(username, password)
	// .size() < 1) {
	// model.addAttribute("message", "账号或者密码错误");
	// return "login";
	// } else {
	// // String limitint;
	// // if (usersRepository.findOne(username).getLimitint() == 0) {
	// // limitint = "管理员";
	// // System.out.println(limitint);
	// // } else {
	// // limitint = "职员";
	// // System.out.println(limitint);
	// // }
	// model.addAttribute("username", username);
	// // model.addAttribute("limitint", limitint);
	// return "manage";
	// }
	// }

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	String addUser(@Valid UsersForm usersForm,
			@RequestParam("limitint") Authority authority, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().size());
			System.out.println(result.getAllErrors());
			return "redirect:/fail.html";
		} else {
			System.out.println("no error");
		}
		Users users = new Users();
		users.setPassword(usersForm.getPassword());
		users.setUsername(usersForm.getUsername());
		Users newuser = usersRepository.save(users);
		newuser.setAuthorities(Collections.singleton(authority));
		authority.getUsers().add(newuser);
		authorityRepository.save(authority);

		return "redirect:/listusers";
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.GET)
	String addUser() {
		return "adduser";
	}

	@RequestMapping(value = "/listusers", method = RequestMethod.GET)
	String listUser(Model model) {
		List<Users> users = usersRepository.findAll();
		model.addAttribute("users", users);
		return "listusers";
	}

	@RequestMapping(value = "/updateuser", method = RequestMethod.GET)
	String updateUser(@RequestParam("username") Users user, Model model) {
		model.addAttribute("user", user);
		return "updateuser";
	}

	@RequestMapping(value = "/updateuser", method = RequestMethod.POST)
	String updateUser(@RequestParam("username") Users user,
			@Valid UsersForm form, BindingResult result) {
		if (result.hasErrors()) {
			return "redirect:/listusers";
		}
		BeanUtils.copyProperties(form, user);
		usersRepository.save(user);
		return "redirect:/listusers";
	}

	@RequestMapping(value = "/deleteuser/{username}", method = RequestMethod.GET)
	String deleteUser(@PathVariable("username") Users user) {
		usersRepository.delete(user);
		return "redirect:../listusers";
	}

}
