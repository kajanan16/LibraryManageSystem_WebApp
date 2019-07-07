package com.SpringBoot.Firstwebapp.controllers;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SpringBoot.Firstwebapp.Entity.Books;
import com.SpringBoot.Firstwebapp.Entity.Users;
import com.SpringBoot.Firstwebapp.Repositories.BBarrow;
import com.SpringBoot.Firstwebapp.Repositories.BookRepo;
import com.SpringBoot.Firstwebapp.Repositories.UserRepo;
import com.SpringBoot.Firstwebapp.Service.Availablity;
import com.SpringBoot.Firstwebapp.Service.Return;
import com.SpringBoot.Firstwebapp.Service.UserService;
import com.SpringBoot.Firstwebapp.model.BookBarrow;

@Controller
public class UserController {
	@Autowired
	UserRepo usrepo;

	@Autowired
	UserService service;

	@Autowired
	BookRepo brep;

	@Autowired
	BookBarrow br;

	@Autowired
	BBarrow brepo;

	@Autowired
	Availablity avl;

	@Autowired
	Return rt;

	@RequestMapping(value = "/addUser")
	public String userLoad(ModelMap model) {

		model.addAttribute("userObj", new Users(service.addmisionNo(), "", "", 1, "", 1, ""));
		return "addUser";

	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String userLoad(Users userObj) {

		usrepo.save(userObj);
		return "redirect:/";

	}

	@RequestMapping("/borrowed_book")
	public String barrowBook() {
		return "borrowed_book";

	}

	@RequestMapping(value = "/borrowed_book", method = RequestMethod.POST)
	public String barrowedBook(@RequestParam int b_id, @RequestParam String uid, ModelMap model) {

		// br.action(uid, b_id);
		// 100001
		br.action("100001", 1004);
		model.put("list", brepo.findAll());

		return "show";

	}

	@RequestMapping(value = "/det")
	public String barrowedBook(ModelMap model) {

		model.put("list", brepo.findAll());

		return "show";

	}

	@RequestMapping(value = "/query")
	public String queryBook() {

		return "query";

	}

	@RequestMapping(value = "/query", method = RequestMethod.POST)
	public String showqBook(ModelMap model, @RequestParam int b_id) {

		ArrayList<Books> alist = new ArrayList();
//		Optional<Books> obj=brep.findById(1001);
//		Books lis=obj.get();
		alist.add(brep.findById(b_id).orElse(new Books()));
		model.put("list", alist);
		model.put("avail", avl.available(b_id));
		return "showAvailbook";

	}

	@RequestMapping(value = "/return")
	public String returnBook() {
		return "returnBook";
							
	}

	@RequestMapping(value = "/return", method = RequestMethod.POST)
	public String returnedBook(@RequestParam String uid, @RequestParam int b_id) {

		rt.returnbook(b_id, uid);
		
		return "redirect:/det";

	}

}
