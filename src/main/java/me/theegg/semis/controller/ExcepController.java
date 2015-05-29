package me.theegg.semis.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.BasicErrorController;
import org.springframework.boot.autoconfigure.web.ErrorAttributes;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExcepController extends BasicErrorController {

	@Autowired
	public ExcepController(ErrorAttributes errorAttributes) {
		super(errorAttributes);
	}

	@Override
	@RequestMapping(value = "${error.path:/error}", produces = "text/html")
	public ModelAndView errorHtml(HttpServletRequest request) {

		if (getStatus(request) == HttpStatus.NOT_FOUND) {
			return new ModelAndView("404");
		}
		return super.errorHtml(request);
	}

	private HttpStatus getStatus(HttpServletRequest request) {
		Integer statusCode = (Integer) request
				.getAttribute("javax.servlet.error.status_code");
		if (statusCode != null) {
			try {
				return HttpStatus.valueOf(statusCode);
			} catch (Exception ex) {
			}
		}
		return HttpStatus.INTERNAL_SERVER_ERROR;
	}
	// @Configuration
	// public class TomcatConfigure implements
	// EmbeddedServletContainerCustomizer {
	//
	// // @RequestMapping("/404")
	// // String notFound() {
	// // return "404";
	// // }
	//
	// @Override
	// public void customize(ConfigurableEmbeddedServletContainer container) {
	// container.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND, "/404"));
	// }
	// }

}
