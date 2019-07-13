package com.SpringBoot.Firstwebapp.Controller;

import java.text.ParseException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.SpringBoot.Firstwebapp.Entity.Users;
import com.SpringBoot.Firstwebapp.Repositories.BBarrow;
import com.SpringBoot.Firstwebapp.Repositories.UserRepo;
import com.SpringBoot.Firstwebapp.Service.FineService;
import com.SpringBoot.Firstwebapp.Service.UserLogin;

@Controller
@SessionAttributes("uid")
public class UserController {

	@Autowired
	UserLogin ulogin;

	@Autowired
	UserRepo usrepo; 
	
	@Autowired
	BBarrow bkb;
	
	@Autowired
	FineService fine;
	
	@RequestMapping("/uHome")
	public String uHome()
	{
		return "userHome";
	}

	@RequestMapping("/contact")
	public String contact() {
		return "contactForm";
	}

	@RequestMapping(value="/ulogin")
	public String login() {
		return "userLogin";
	}

	@RequestMapping(value = "/ulogin", method = RequestMethod.POST)
	public String logedin(@RequestParam String uid, @RequestParam String upass, ModelMap model) {
		if (ulogin.validPass(uid, upass)) {
			model.put("uid", uid);
			return "redirect:/uHome";
		}
		else
		{
			return "userLogin";
		}
		
	}

	@RequestMapping("/uDetails")
	public String contact1(ModelMap mdl) {
		String val = (String) mdl.get("uid");
		Optional<Users> urs = usrepo.findById(val);
		Users obj = urs.get();
		mdl.put("id", obj.getUid());
		mdl.put("name", obj.getUfname() + " " + obj.getUlname());
		mdl.put("age", obj.getUage());
		mdl.put("tel", obj.getUphone());
		mdl.put("email", obj.getUemail());
		mdl.put("address", obj.getUaddress());
		return "myDetails";
	}

	@RequestMapping("/uQuery")
	public String uBookQuery() {
		return "uBookQuery";
	}

	@RequestMapping(value = "/uQuery", method = RequestMethod.POST)
	public String uBookDet(@RequestParam String bkname) {
		return "showUQuery";
	}

	@RequestMapping("/uFine")
	public String uFine(ModelMap model) throws ParseException {
		String val = (String) model.get("uid");
		
		model.addAttribute("det",fine.bookFine(val));
		  
		return "finrDetails";
	}

}
