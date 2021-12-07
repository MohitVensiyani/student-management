package com.studentmanagement.dao;

import java.util.List;

import com.studentmanagement.api.Login;

public interface LoginDAO {

	List<Login> loadLogin();
	
}
