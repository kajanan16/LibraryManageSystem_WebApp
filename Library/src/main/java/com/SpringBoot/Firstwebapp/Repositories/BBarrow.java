package com.SpringBoot.Firstwebapp.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.SpringBoot.Firstwebapp.Entity.BarrowBooks;

public interface BBarrow extends CrudRepository<BarrowBooks,Integer>{

	Iterable<BarrowBooks> findByBookname(String uid);
	Iterable<BarrowBooks> findByUserid(String uid);
	
}
