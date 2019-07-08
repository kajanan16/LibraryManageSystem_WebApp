package com.SpringBoot.Firstwebapp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SpringBoot.Firstwebapp.Repositories.BookRepo;

@Controller
public class LoginController {

	@Autowired
	BookRepo repo;

	@RequestMapping("/welcome")
	public String welcome(ModelMap model) {
		model.put("list", repo.findAll());
		return "welcomepage";

	}

}
