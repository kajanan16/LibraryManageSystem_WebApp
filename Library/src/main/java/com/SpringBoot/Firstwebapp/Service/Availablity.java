package com.SpringBoot.Firstwebapp.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.SpringBoot.Firstwebapp.Entity.BarrowBooks;
import com.SpringBoot.Firstwebapp.Entity.Books;
import com.SpringBoot.Firstwebapp.Repositories.BBarrow;
import com.SpringBoot.Firstwebapp.Repositories.BookRepo;

@Component
public class Availablity {

	@Autowired
	BookRepo brep;

	@Autowired
	BBarrow br;

	public int available(int bid) {
		ArrayList<BarrowBooks> lst = (ArrayList<BarrowBooks>) br.findAll();
		Books obj1 = brep.findById(bid).orElse(new Books());
		int avail = obj1.B_quantity;
		for (int i = 0; i < lst.size(); i++) {
			BarrowBooks obj = lst.get(i);
			if (obj.getBook_id() == bid) {
				avail--;
			}
		}
		return avail;

	}

}
