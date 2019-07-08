package com.SpringBoot.Firstwebapp.Repositories;

import org.springframework.data.repository.CrudRepository;

import com.SpringBoot.Firstwebapp.Entity.Books;
import com.SpringBoot.Firstwebapp.Entity.Users;

public interface UserRepo extends CrudRepository<Users,String> {

}
