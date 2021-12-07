package com.studentmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.Expense;
import com.studentmanagement.api.Salary;
import com.studentmanagement.api.StudentFees;
import com.studentmanagement.rowmapper.EmployeeSalaryRowMapper;
import com.studentmanagement.rowmapper.ExpenseRowMapper;
import com.studentmanagement.rowmapper.StudentFeesRowMapper;

@Repository
public class LedgerDAOImpl implements LedgerDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Expense> loadExpense(String from, String to) {

		String sql = "SELECT * FROM expense WHERE expense_date BETWEEN ? AND ?";
		
		List<Expense> expenseList = jdbcTemplate.query(sql, new ExpenseRowMapper(), from, to);
	
		return expenseList;
	}

	@Override
	public List<Salary> loadSalary(String from, String to) {
		String sql = "SELECT * FROM salary WHERE salary.date BETWEEN ? AND ?";
		
		List<Salary> salaryList = jdbcTemplate.query(sql, new EmployeeSalaryRowMapper(), from, to);
	
		return salaryList;
	}

	@Override
	public List<StudentFees> loadFees(String from, String to) {
		String sql = "SELECT * FROM student_fees WHERE student_fees.date BETWEEN ? AND ?";
		
		List<StudentFees> feesList = jdbcTemplate.query(sql, new StudentFeesRowMapper(), from, to);
	
		return feesList;
	}
	

}
