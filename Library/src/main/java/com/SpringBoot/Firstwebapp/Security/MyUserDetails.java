//package com.SpringBoot.Firstwebapp.Security;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Component;
//
//import com.SpringBoot.Firstwebapp.Entity.Users;
//import com.SpringBoot.Firstwebapp.Repositories.UserRepo;
//
//@Component
//public class MyUserDetails implements UserDetailsService {
//
//	@Autowired
//	UserRepo urep;
//	
//	@Override
//	public UserDetails loadUserByUsername(String ufname) throws UsernameNotFoundException {
//		
//		Users user=urep.findByUFname(ufname);
//		
//		if(user==null)
//		{
//			throw new UsernameNotFoundException("User 404");
//		}
//	
//		
//		return new UserPrincipal(user);
//	}
//
//}
