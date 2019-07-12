//package com.SpringBoot.Firstwebapp.Security;
//
//import java.util.Collection;
//import java.util.Collections;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//
//import com.SpringBoot.Firstwebapp.Entity.Users;
//
//
//public class UserPrincipal implements UserDetails {
//
//	private Users user;
//
//	public UserPrincipal(Users user) {
//		super();
//		this.user = user;
//	}
//
//	@Override
//	public Collection<? extends GrantedAuthority> getAuthorities() {
//		
//		return Collections.singleton(new SimpleGrantedAuthority("USER"));
//		
//	}
//
//	@Override
//	public String getPassword() {
//
//		return user.getPassword();
//	}
//
//	@Override
//	public String getUsername() {
//		return user.getUfname();
//	}
//
//	@Override
//	public boolean isAccountNonExpired() {
//		return true;
//	}
//
//	@Override
//	public boolean isAccountNonLocked() {
//		return true;
//	}
//
//	@Override
//	public boolean isCredentialsNonExpired() {
//		return true;
//	}
//
//	@Override
//	public boolean isEnabled() {
//		// TODO Auto-generated method stub
//		return true;
//	}
//
//}
