package com.SpringBoot.Firstwebapp.Repositories;

import org.springframework.data.repository.CrudRepository;

import com.SpringBoot.Firstwebapp.Entity.Books;

public interface BookRepo extends CrudRepository<Books,Integer>{

}
