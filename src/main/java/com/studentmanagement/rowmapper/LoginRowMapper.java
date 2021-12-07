package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.Login;

public class LoginRowMapper implements RowMapper<Login>{

	@Override
	public Login mapRow(ResultSet rs, int rowNum) throws SQLException {

		Login login = new Login();
		login.setId(rs.getString("id"));
		login.setPass(rs.getString("pass"));
		
		return login;
	}
	

}
