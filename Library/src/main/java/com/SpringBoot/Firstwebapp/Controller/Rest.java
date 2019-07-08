package com.SpringBoot.Firstwebapp.Controller;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.SpringBoot.Firstwebapp.Entity.BarrowBooks;
import com.SpringBoot.Firstwebapp.Entity.Books;
import com.SpringBoot.Firstwebapp.Repositories.BBarrow;
import com.SpringBoot.Firstwebapp.Repositories.BookRepo;
import com.SpringBoot.Firstwebapp.model.BookBarrow;

@RestController
public class Rest {

	@Autowired
	BookBarrow br;
	
	@Autowired
	BBarrow brepo;

	@Autowired
	Books bk;

	
	@Autowired
	BookRepo rp;
	
	@RequestMapping("/rest")
	@ResponseBody
	public String Welcomepage() {
		ArrayList<Books> alist=new ArrayList();
	Optional<Books> obj=rp.findById(1001);
	Books lis=obj.get();
	 
	alist.add(lis);
	
	
	

		
		return "hi Bro";
	
		
		//return "Hey Man";

	}

}
