package me.theegg.semis.controller;

import java.util.List;

import javax.validation.Valid;

import me.theegg.semis.domain.Commodity;
import me.theegg.semis.form.CommodityForm;
import me.theegg.semis.repository.CommodityRepository;

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
public class CommodityController {
	private final CommodityRepository commodityRepository;

	@Autowired
	public CommodityController(CommodityRepository commodityReposity) {
		this.commodityRepository = commodityReposity;
	}

	// 抛出404异常
	// @RequestMapping(value = "/**")
	// void noFound(HttpServletRequest request)
	// throws NoSuchRequestHandlingMethodException {
	// new NoSuchRequestHandlingMethodException(request.getMethod(),
	// request.getRequestURI(), null);
	// }

	// @RequestMapping("/404")
	// String notFound() {
	// return "404";
	// }

	@RequestMapping(value = "/addcommodity", method = RequestMethod.POST)
	String addCommodity(@Valid CommodityForm commodityForm, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().size());
			System.out.println(result.getAllErrors());
			return "redirect:/fail.html";
		} else {
			System.out.println("no error");
		}
		Commodity commodity = new Commodity();
		BeanUtils.copyProperties(commodityForm, commodity);
		commodityRepository.save(commodity);
		return "redirect:/listcommodity";
	}

	@RequestMapping(value = "/addcommodity", method = RequestMethod.GET)
	String addCommodity() {
		return "addcommodity";
	}

	@RequestMapping(value = "/listcommodity", method = RequestMethod.GET)
	String listUser(Model model) {
		List<Commodity> commodities = commodityRepository.findAll();
		model.addAttribute("commodities", commodities);
		return "listcommodity";
	}

	@RequestMapping(value = "/updatecommodity", method = RequestMethod.GET)
	String updateCommodity(@RequestParam("barcode") Commodity commodity,
			Model model) {
		model.addAttribute("commodity", commodity);
		return "updatecommodity";
	}

	@RequestMapping(value = "/updatecommodity", method = RequestMethod.POST)
	String updateCommodity(@RequestParam("barcode") Commodity commodity,
			@Valid CommodityForm form, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "redirect:listcommodity";
		}
		BeanUtils.copyProperties(form, commodity);
		commodityRepository.save(commodity);
		return "redirect:/listcommodity";
	}

	@RequestMapping(value = "/deletecommodity/{barcode}", method = RequestMethod.GET)
	String deleteCommodity(@PathVariable("barcode") Commodity commodity) {
		commodityRepository.delete(commodity);
		return "redirect:../listcommodity";
	}

}
