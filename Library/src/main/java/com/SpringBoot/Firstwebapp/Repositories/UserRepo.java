package com.SpringBoot.Firstwebapp.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.SpringBoot.Firstwebapp.Entity.Books;
import com.SpringBoot.Firstwebapp.Entity.Users;

public interface UserRepo extends JpaRepository<Users, String> {

    Users findByUFname(String ufname);
    Users findByUId(String uid);
}
