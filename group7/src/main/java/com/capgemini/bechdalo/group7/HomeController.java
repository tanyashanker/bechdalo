package com.capgemini.bechdalo.group7;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {

	@RequestMapping("/home")
	public ModelAndView home() {
		ModelAndView mav= new ModelAndView("home");
		return mav;
	}
	@RequestMapping("/faq")
	public ModelAndView faq() {
		ModelAndView mav= new ModelAndView("faq");
		return mav;
	}
	@RequestMapping("/category")
	public ModelAndView category() {
		ModelAndView mav= new ModelAndView("category");
		return mav;
	}
	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView mav= new ModelAndView("contact");
		return mav;
	}
	@RequestMapping("/feedback")
	public ModelAndView feedback() {
		ModelAndView mav= new ModelAndView("feedback");
		return mav;
	}
	@RequestMapping("/privacy")
	public ModelAndView privacy() {
		ModelAndView mav= new ModelAndView("PrivacyPolicy");
		return mav;
	}@RequestMapping("/terms")
	public ModelAndView terms() {
		ModelAndView mav= new ModelAndView("termsOfUse");
		return mav;
	}
}
