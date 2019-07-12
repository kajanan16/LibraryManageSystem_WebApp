package com.SpringBoot.Firstwebapp.Service;

import java.security.SecureRandom;
import java.util.Random;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
@Component
public class UserPassword {
		 public static final Random RANDOM = new SecureRandom();
		    public static final String ALPHABET = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	
		    public static String generatePassword() {
		        StringBuilder returnValue = new StringBuilder(10);
		        for (int i = 0; i < 10; i++) {
		            returnValue.append(ALPHABET.charAt(RANDOM.nextInt(ALPHABET.length())));
		        }
		        return new String(returnValue);
		    }
}
