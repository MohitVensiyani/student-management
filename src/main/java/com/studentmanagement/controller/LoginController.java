package com.studentmanagement.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.studentmanagement.api.Login;
import com.studentmanagement.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;

	public LoginController() {
		System.out.println("\n\n====Auth Controller=====\n\n");

	}
	
	@GetMapping("/login")
	public String getLoginForm() {
		return "signin";
	}
	
	@GetMapping("/showDashboard")
	public String showDadhBoard() {
		return "dashboard";
	}
	
	@PostMapping("/login_action")
	public void checkLogin(
			@RequestParam("username") String unm,
			@RequestParam("password") String pwd,
			HttpServletRequest req,
			HttpServletResponse res) throws IOException {
		
		System.out.println(unm+"========"+pwd);
		List<Login> loginList = loginService.loadLogin();
		
		
		String id = "";
		String pass = "";
		for(Login temp : loginList) {
			id = temp.getId();
			pass = temp.getPass();
			
			if(unm.equals(id) && pwd.equals(pass)) {
				req.getSession().setAttribute("username", unm);
				res.sendRedirect("showDashboard");
			}
			else {
				res.sendRedirect("login");
				
			}
		}
		
		
		
	}
	
	@GetMapping("/logout")
	public void logoutAdminUser(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		req.getSession().invalidate();
		
		res.sendRedirect("login");
		
	}
	
	
	
}
