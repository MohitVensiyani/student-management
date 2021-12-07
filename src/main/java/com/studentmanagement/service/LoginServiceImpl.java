package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.Login;
import com.studentmanagement.dao.LoginDAO;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDAO loginDAO;

	@Override
	public List<Login> loadLogin() {
		
		List<Login> loginList = loginDAO.loadLogin();
		
		return loginList;
	}

}
