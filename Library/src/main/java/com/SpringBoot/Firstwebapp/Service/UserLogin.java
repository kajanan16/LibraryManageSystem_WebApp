package com.SpringBoot.Firstwebapp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringBoot.Firstwebapp.Entity.Users;
import com.SpringBoot.Firstwebapp.Repositories.UserRepo;

@Service
public class UserLogin {

	@Autowired
	UserRepo urep;

	public boolean validPass(String uid, String pwd) {

		String pas = "";

		try {
			Users pass = urep.findById(uid).orElse(null);
			pas = pass.getPassword();
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		if (pas.equals(pwd))
			return true;

		return false;

	}

}
