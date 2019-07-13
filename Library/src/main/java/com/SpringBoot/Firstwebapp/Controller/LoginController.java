package com.SpringBoot.Firstwebapp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SpringBoot.Firstwebapp.Repositories.BookRepo;

@Controller
public class LoginController {

	@Autowired
	BookRepo repo;
	
	
	@RequestMapping(value = "/adminLogin")
	public String adminLogin() {

		return "adminLogin";

	}
	
	@RequestMapping(value = "/adminLogin",method = RequestMethod.POST)
	public String adminLogged(@RequestParam int aid,@RequestParam String apwd) {
		
		if(aid==24966 && apwd.equals("admin"))
			return"redirect:/welcome";

		return "adminLogin";

	}

	@RequestMapping(value="/welcome")
	public String welcome(ModelMap model) {
		model.put("list", repo.findAll());
		return "welcomepage";

	}

}
