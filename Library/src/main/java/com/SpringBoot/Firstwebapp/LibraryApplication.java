package com.SpringBoot.Firstwebapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.SpringBoot.Firstwebapp.Entity.Users;
import com.SpringBoot.Firstwebapp.Repositories.UserRepo;

@SpringBootApplication
public class LibraryApplication {

	
	
	public static void main(String[] args) {
		SpringApplication.run(LibraryApplication.class, args);
		

		
	}
	

}
