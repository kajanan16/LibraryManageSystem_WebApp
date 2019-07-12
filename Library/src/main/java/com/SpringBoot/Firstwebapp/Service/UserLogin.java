package com.SpringBoot.Firstwebapp.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringBoot.Firstwebapp.Entity.Users;
import com.SpringBoot.Firstwebapp.Repositories.UserRepo;

@Service
public class UserLogin {

	@Autowired
	UserRepo urep;

	public boolean validPass(String uid, String pwd) {
		Optional<Users> pass = urep.findById(uid);
		Users us = pass.get();

		if (us.getPassword().equals(pwd))
			return true;

		return false;

	}

}
