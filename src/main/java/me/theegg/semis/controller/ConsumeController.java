package me.theegg.semis.controller;

import java.util.List;

import javax.validation.Valid;

import me.theegg.semis.domain.ConsumeVips;
import me.theegg.semis.form.ConsumeForm;
import me.theegg.semis.repository.CommodityRepository;
import me.theegg.semis.repository.ConsumeRepository;
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
public class ConsumeController {
	private final ConsumeRepository consumeRepository;
	@Autowired
	VipsRepository vipsRepository;
	@Autowired
	CommodityRepository commodityRepository;

	@Autowired
	public ConsumeController(ConsumeRepository consumeRepository) {
		this.consumeRepository = consumeRepository;
	}

	@RequestMapping(value = "/addconsume", method = RequestMethod.POST)
	String addConsume(@Valid ConsumeForm consumeForm, BindingResult result) {
		if (result.hasErrors()
				|| vipsRepository.findOne(consumeForm.getVipid()) == null
				|| commodityRepository.findOne(consumeForm.getBarcode()) == null) {
			System.out.println(result.getAllErrors().size());
			System.out.println(result.getAllErrors());
			return "redirect:/fail.html";
		} else {
			System.out.println("no error");
		}
		System.out.println(consumeForm);
		ConsumeVips consume = new ConsumeVips();
		BeanUtils.copyProperties(consumeForm, consume);
		System.out.println(consume);
		System.out.println(vipsRepository.findOne(consumeForm.getVipid()));
		System.out
				.println(commodityRepository.findOne(consumeForm.getBarcode()));
		consume.setVips(vipsRepository.findOne(consumeForm.getVipid()));
		consume.setBarcode(commodityRepository.findOne(consumeForm.getBarcode()));
		System.out.println(consume);
		consumeRepository.save(consume);
		return "redirect:/listconsume";
	}

	@RequestMapping(value = "/addconsume", method = RequestMethod.GET)
	String addConsume() {
		return "addconsume";
	}

	@RequestMapping(value = "/listconsume", method = RequestMethod.GET)
	String listConsume(Model model) {
		List<ConsumeVips> consumes = consumeRepository.findAll();

		model.addAttribute("consumes", consumes);
		return "listconsume";
	}

	// @RequestMapping(value = "/detailconsume", method = RequestMethod.GET)
	// String detailVips(@RequestParam("vipid") Vips vip, Model model) {
	// model.addAttribute("vip", vip);
	// return "detailvips";
	// }

	@RequestMapping(value = "/updateconsume", method = RequestMethod.GET)
	String updateConsume(@RequestParam("consumeid") ConsumeVips consume,
			Model model) {
		model.addAttribute("consume", consume);
		return "updateconsume";
	}

	@RequestMapping(value = "/updateconsume", method = RequestMethod.POST)
	String updateConsume(@RequestParam("consumeid") ConsumeVips consume,
			@Valid ConsumeForm form, BindingResult result) {
		if (result.hasErrors()
				|| vipsRepository.findOne(form.getVipid()) == null
				|| commodityRepository.findOne(form.getBarcode()) == null) {
			System.out.println(result.getAllErrors());
			return "redirect:/listconsume";
		}
		consume.setVips(vipsRepository.findOne(form.getVipid()));
		consume.setBarcode(commodityRepository.findOne(form.getBarcode()));
		BeanUtils.copyProperties(form, consume);
		consumeRepository.save(consume);
		return "redirect:/listconsume";
	}

	@RequestMapping(value = "/deleteconsume/{consumeid}", method = RequestMethod.GET)
	String deleteVips(@PathVariable("consumeid") ConsumeVips consume) {
		consumeRepository.delete(consume);
		return "redirect:../listconsume";
	}

}
