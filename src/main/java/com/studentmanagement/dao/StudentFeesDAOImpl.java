package com.studentmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.StudentFees;
import com.studentmanagement.rowmapper.StudentFeesRowMapper;

@Repository
public class StudentFeesDAOImpl implements StudentFeesDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<StudentFees> loadFees(int id) {
		
	
		String sql = "SELECT * FROM student_fees WHERE id=?";
		System.out.println(id);
		List<StudentFees> feeslist = jdbcTemplate.query(sql, new StudentFeesRowMapper(), id);
		
		return feeslist;
		
	}

	@Override
	public void saveFees(StudentFees studentFees, int id) {
		Object[] sqlParameter = {
				studentFees.getId(),
				studentFees.getDate(),
				studentFees.getAmount(),
				studentFees.getRemaining_balance()
		};
		
		String sql = "INSERT INTO student_fees(id, date, amount, remaining_balance) VALUES(?,?,?,?)";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 fees of student added : "+ id);
		
	}
	

}
