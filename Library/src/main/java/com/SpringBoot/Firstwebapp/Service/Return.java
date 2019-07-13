package com.SpringBoot.Firstwebapp.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.SpringBoot.Firstwebapp.Entity.BarrowBooks;
import com.SpringBoot.Firstwebapp.Repositories.BBarrow;
import com.SpringBoot.Firstwebapp.Repositories.BookRepo;

@Component
public class Return {

	@Autowired
	BookRepo brep;

	@Autowired
	BBarrow br;

	public void returnbook(int bkid, String usid) {
		ArrayList<BarrowBooks> alst = (ArrayList<BarrowBooks>) br.findAll();
		for (int i = 0; i < alst.size(); i++) {
			BarrowBooks bb = alst.get(i);
			String getid = bb.getUserid();
			if (bb.getBook_id() == bkid && getid.equals(usid)) {
				br.delete(bb);
			}
		}
	}
}
