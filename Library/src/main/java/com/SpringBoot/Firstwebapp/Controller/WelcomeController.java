package com.SpringBoot.Firstwebapp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {
	
	
	@RequestMapping("/")
	public String home()
	{
		return "welcome";
	}
			

}
