package com.SpringBoot.Firstwebapp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SpringBoot.Firstwebapp.Service.UserLogin;

@Controller
public class UserController {

	@Autowired
	UserLogin ulogin;

	@RequestMapping("/contact")
	public String contact() {
		return "contactForm";
	}

	@RequestMapping("/ulogin")
	public String login() {
		return "userLogin";
	}

	@RequestMapping(value = "/ulogin", method = RequestMethod.POST)
	public String logedin(@RequestParam String uid, @RequestParam String upass) {

		if (ulogin.validPass(uid, upass))
			return "redirect:/uDetails";

		return "userLogin";
	}

	@RequestMapping("/uDetails")
	public String contact1() {
		return "myDetails";
	}

	@RequestMapping("/uQuery")
	public String uBookQuery() {
		return "uBookQuery";
	}
	// showUQuery.jsp

	@RequestMapping(value = "/uQuery", method = RequestMethod.POST)
	public String uBookDet(@RequestParam String bkname) {
		return "showUQuery";
	}

	@RequestMapping("/uFine")
	public String uFine() {
		return "finrDetails";
	}

}
