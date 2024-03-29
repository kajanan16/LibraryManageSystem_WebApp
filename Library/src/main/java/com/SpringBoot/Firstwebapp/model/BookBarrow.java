package com.SpringBoot.Firstwebapp.model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.SpringBoot.Firstwebapp.Entity.BarrowBooks;
import com.SpringBoot.Firstwebapp.Entity.Books;
import com.SpringBoot.Firstwebapp.Entity.Users;
import com.SpringBoot.Firstwebapp.Repositories.BBarrow;
import com.SpringBoot.Firstwebapp.Repositories.BookRepo;
import com.SpringBoot.Firstwebapp.Repositories.UserRepo;

@Component
public class BookBarrow {

	@Autowired
	UserRepo usrepo;

	@Autowired
	BookRepo repo;

	@Autowired
	BBarrow brepo;

	@Autowired
	BarrowBooks bbk1;

	public void action(String us, int bk) {

		Users usobj = usrepo.findById(us).orElse(null);
		Books bkobj = repo.findById(bk).orElse(null);

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd ");
		LocalDateTime now = LocalDateTime.now();
		System.out.println(dtf.format(now));

	
		// bbk.setTrasac_id(2);
		bbk1.setBook_id(bk);
		bbk1.setBookname(bkobj.getB_name());
		bbk1.setDate(dtf.format(now).toString());
		bbk1.setUser_id(usobj.getUid());

		brepo.save(bbk1);

	}

}
