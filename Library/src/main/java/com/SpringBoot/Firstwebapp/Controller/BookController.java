package com.SpringBoot.Firstwebapp.Controller;

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
public class BookController {

	
	@Autowired
	BookRepo repo;
	
	@Autowired
	BookService sev;
	
	
	@RequestMapping("/addbooks")
	public String showadd(ModelMap model) {
		
		model.addAttribute("obj", new Books(sev.bookNumber(), "", "", 1, 1, ""));
		return "addbook";

	}

	@RequestMapping(value = "/addbooks", method = RequestMethod.POST)
	public String addbooks(Books obj) {
		repo.save(obj);
		return "redirect:/welcome";

	}

	@RequestMapping(value = "/update-book")
	public String updateBooks(@RequestParam int id, ModelMap model) {

		model.addAttribute("obj", repo.findById(id));
		return "addbook";

	}

	@RequestMapping(value = "/update-book", method = RequestMethod.POST)
	public String updatedBooks(Books obj) {

		repo.save(obj);
		return "redirect:/welcome";

	}

	@RequestMapping(value = "/deletebook")
	public String deleteBooks(@RequestParam int id) {
		repo.deleteById(id);
		
		return "redirect:/welcome";
	}
	
	@RequestMapping("/sh")
	public String page(ModelMap model)
	{
		model.put("list", repo.findAll());
		return "table";
	}
}
