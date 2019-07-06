package com.SpringBoot.Firstwebapp.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.SpringBoot.Firstwebapp.Entity.Books;
import com.SpringBoot.Firstwebapp.Entity.Users;
import com.SpringBoot.Firstwebapp.Repositories.UserRepo;


@Component
public class UserService {
    
	@Autowired
	UserRepo rep;
	
	
	public String addmisionNo() {
		ArrayList<Users> lis = (ArrayList<Users>) rep.findAll();
		int last = lis.size() - 1;
		Users lsus = lis.get(last);

		long value=Long.parseLong(lsus.getUid())+1;
		return String.valueOf(value);
	}
	
}
