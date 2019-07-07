package com.SpringBoot.Firstwebapp.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SpringBoot.Firstwebapp.Entity.Books;
import com.SpringBoot.Firstwebapp.Repositories.BookRepo;
import com.SpringBoot.Firstwebapp.Service.BookService;

@Controller
public class LoginController {

	@Autowired
	BookRepo repo;
	
	@Autowired
	BookService sev;

	@RequestMapping("/")
	public String welcome(ModelMap model) {
		model.put("list", repo.findAll());
		return "welcomepage";

	}

	@RequestMapping("/addbooks")
	public String showadd(ModelMap model) {
		
		model.addAttribute("obj", new Books(sev.bookNumber(), "", "", 1, 1, ""));
		return "addbook";

	}

	@RequestMapping(value = "/addbooks", method = RequestMethod.POST)
	public String addbooks(Books obj) {
		repo.save(obj);
		return "redirect:/";

	}

	@RequestMapping(value = "/update-book")
	public String updateBooks(@RequestParam int id, ModelMap model) {

		model.addAttribute("obj", repo.findById(id));
		return "addbook";

	}

	@RequestMapping(value = "/update-book", method = RequestMethod.POST)
	public String updatedBooks(Books obj) {

		repo.save(obj);
		return "redirect:/";

	}

	@RequestMapping(value = "/deletebook")
	public String deleteBooks(@RequestParam int id) {
		repo.deleteById(id);
		
		return "redirect:/";
	}
	
	
	
	

}
