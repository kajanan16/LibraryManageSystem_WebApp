package com.SpringBoot.Firstwebapp.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.SpringBoot.Firstwebapp.Entity.Books;
import com.SpringBoot.Firstwebapp.Repositories.BookRepo;


@Component
public class BookService {

	@Autowired
	BookRepo repo;

	public int bookNumber() {
		ArrayList<Books> lis = (ArrayList<Books>) repo.findAll();
		
		if(lis.size()==0)
			return 1001;
		int last = lis.size() - 1;
		Books lsbook = lis.get(last);

		return lsbook.B_id + 1;
	}

}
