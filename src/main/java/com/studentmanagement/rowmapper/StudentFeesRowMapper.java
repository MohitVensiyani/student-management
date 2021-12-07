package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.StudentFees;

public class StudentFeesRowMapper implements RowMapper<StudentFees>{

	@Override
	public StudentFees mapRow(ResultSet rs, int rowNum) throws SQLException {

		StudentFees studentFees = new StudentFees();
		
		studentFees.setFees_id(rs.getInt("fees_id"));
		studentFees.setId(rs.getInt("id"));
		studentFees.setDate(rs.getString("date"));
		studentFees.setAmount(rs.getInt("amount"));
		studentFees.setRemaining_balance(rs.getInt("remaining_balance"));
		
		return studentFees;
	}
	

}
