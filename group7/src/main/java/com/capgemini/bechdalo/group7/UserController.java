package com.capgemini.bechdalo.group7;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class UserController {

	
	@Autowired
	private UserService service;
	
	@RequestMapping("/register")
	public ModelAndView openregistration() {
		ModelAndView mav = new ModelAndView("register");
		return mav;
	}
	
	@RequestMapping("/login")
	public ModelAndView openlogin() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@RequestMapping("/logout")
	public ModelAndView openlogout() {
		ModelAndView mav = new ModelAndView("logout");
		return mav;
	}
	
	
	@RequestMapping(value="/submit", method = RequestMethod.POST)
	public ModelAndView Register(Model model, @ModelAttribute("user") User user, @ModelAttribute("name")String fullname, @ModelAttribute("userName")String uname, @ModelAttribute("password")String password, @ModelAttribute("phone")String phone, @ModelAttribute("email")String email, @ModelAttribute("address")String address, @ModelAttribute("gender")String gender) {
		if((service.findByEmail(email)== null) && (service.findByPhone(phone)==null) && (service.Username(uname) == null)) {
			com.capgemini.bechdalo.group7.User user1= service.create(fullname, uname, password, phone, email, address, gender);
			ModelAndView mav = new ModelAndView(); 
			mav.addObject("users", user1);
			mav.setViewName("login");
			return mav;
		}
		else {
			System.out.println("vvv");
			ModelAndView mav = new ModelAndView(); 
			model.addAttribute("msg", "Email id or phone number already exist");
			mav.setViewName("register");
			return mav;
		}
	}
		@RequestMapping(value="/submit_login", method = RequestMethod.POST)
		public ModelAndView Login(Model model, @ModelAttribute("user") User user,  @ModelAttribute("username")String uname, @ModelAttribute("password")String password, HttpServletRequest req) {
			if((service.Username(uname) != null) && (service.findByPassword(password) != null) ) {
				
				ModelAndView mav = new ModelAndView(); 
                HttpSession session=req.getSession();
                String uname1=uname;
                session.setAttribute("name", uname1);
                System.out.println(session.getAttribute("name"));
				//mav.addObject("users", uname);
				mav.setViewName("home");
				return mav;
			}
			else {
				System.out.println("vvv");
				ModelAndView mav = new ModelAndView(); 
				model.addAttribute("msg", "Username or password is incorrect");
				mav.setViewName("login");
				return mav;
			}
	}
	
		@RequestMapping(value="/submitFeedback", method = RequestMethod.POST)
		public ModelAndView Feedback(Model model, @ModelAttribute("feedback") Feedback feedback, @ModelAttribute("firstName")String firstName, @ModelAttribute("lastName")String lastName, @ModelAttribute("email")String email, @ModelAttribute("phone")String phone, @ModelAttribute("message")String message) {
				Feedback feedback1= service.submitFeedback(firstName, lastName, email, phone, message);
				ModelAndView mav = new ModelAndView(); 
				mav.addObject("feedback", feedback1);
				
				mav.setViewName("feedback");
				
				return mav;
		}
		
		@RequestMapping(value="/submitContact", method = RequestMethod.POST)
		public ModelAndView Contact(Model model, @ModelAttribute("contact") Contact contact, @ModelAttribute("name")String name, @ModelAttribute("email")String email, @ModelAttribute("phone")String phone, @ModelAttribute("query")String query) {
				Contact contact1= service.submitContact(name, email, phone, query);
				ModelAndView mav = new ModelAndView(); 
				mav.addObject("contact", contact1);
				
				mav.setViewName("contact");
				return mav;
			
		}
		
	
}
