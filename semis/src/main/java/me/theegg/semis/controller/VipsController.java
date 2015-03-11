package me.theegg.semis.controller;

import java.util.List;

import javax.validation.Valid;

import me.theegg.semis.domain.Vips;
import me.theegg.semis.form.VipsForm;
import me.theegg.semis.repository.VipsRepository;
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
public class VipsController {
	private final VipsRepository vipsRepository;

	@Autowired
	public VipsController(VipsRepository vipsRepository) {
		this.vipsRepository = vipsRepository;
	}

	@RequestMapping(value = "/addvips", method = RequestMethod.POST)
	String addVips(@Valid VipsForm vipsForm, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().size());
			System.out.println(result.getAllErrors());
			return "redirect:/fail.html";
		} else {
			System.out.println("no error");
		}
		System.out.println(vipsForm);
		Vips vip = new Vips();
		BeanUtils.copyProperties(vipsForm, vip);
		System.out.println(vip);
		vipsRepository.save(vip);
		return "redirect:/listvips";

	}

	@RequestMapping(value = "/addvips", method = RequestMethod.GET)
	String addVips() {
		return "addvips";
	}

	@RequestMapping(value = "/listvips", method = RequestMethod.GET)
	String listVips(Model model) {
		List<Vips> vips = vipsRepository.findAll();
		model.addAttribute("vips", vips);
		return "listvips";
	}

	@RequestMapping(value = "/detailvips", method = RequestMethod.GET)
	String detailVips(@RequestParam("vipid") Vips vip, Model model) {
		model.addAttribute("vip", vip);
		return "detailvips";
	}

	@RequestMapping(value = "/updatevips", method = RequestMethod.GET)
	String updateVips(@RequestParam("vipid") Vips vip, Model model) {
		model.addAttribute("vip", vip);
		return "updatevips";
	}

	@RequestMapping(value = "/updatevips", method = RequestMethod.POST)
	String updateVips(@RequestParam("vipid") Vips vip, @Valid VipsForm form,
			BindingResult result) {
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "redirect:/listvips";
		}
		BeanUtils.copyProperties(form, vip);
		vipsRepository.save(vip);
		return "redirect:/listvips";
	}

	@RequestMapping(value = "/deletevips/{vipid}", method = RequestMethod.GET)
	String deleteVips(@PathVariable("vipid") Vips vip) {
		vipsRepository.delete(vip);
		return "redirect:../listvips";
	}

}
