package com.studentmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.Login;
import com.studentmanagement.rowmapper.LoginRowMapper;

@Repository
public class LoginDAOImpl implements LoginDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Login> loadLogin() {
		
		String sql = "SELECT * FROM login";
		List<Login> loginList = jdbcTemplate.query(sql, new LoginRowMapper());
		
		
		return loginList;
	}

}
