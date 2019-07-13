package com.SpringBoot.Firstwebapp.RestControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.SpringBoot.Firstwebapp.Entity.Users;
import com.SpringBoot.Firstwebapp.Repositories.UserRepo;

@RestController
public class Restapp {
	
	
	
	
	@Autowired
	UserRepo usrepo;
	
	@RequestMapping("/restapp")
	public String welcome()
	{
		Users usobj = usrepo.findById("100002").orElse(null);
		
		String wrd=usobj.getUid();
		
		return wrd;
		
	}
	

}
