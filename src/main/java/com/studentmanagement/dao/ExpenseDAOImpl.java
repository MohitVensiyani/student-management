package com.studentmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.Expense;
import com.studentmanagement.rowmapper.ExpenseRowMapper;

@Repository
public class ExpenseDAOImpl implements ExpenseDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Expense> loadExpense() {
		
		String sql = "SELECT * FROM expense";
		
		List<Expense> listOfExpense = jdbcTemplate.query(sql, new ExpenseRowMapper());
		
		return listOfExpense;
	}

	@Override
	public void saveExpenses(Expense expense) {
		Object[] sqlParameter = {expense.getExpense_name(), expense.getDescription(), expense.getExpense_date(), expense.getAmount()};
		
		String sql = "INSERT INTO expense(expense_name, description, expense_date, amount) VALUES(?,?,?,?)";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 record inserted");
	}

	@Override
	public void updateExpenses(Expense expense) {
		Object[] sqlParameter = {expense.getExpense_name(), expense.getDescription(), expense.getExpense_date(), expense.getAmount(), expense.getExpense_id()};
		String sql = "UPDATE expense set expense_name=?, description=?, expense_date=?, amount=? WHERE expense_id=?";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 record updated");
	}

	@Override
	public Expense getExpense(int expense_id) {

		String sql = "SELECT * FROM expense WHERE expense_id=?";
		
		Expense expense = jdbcTemplate.queryForObject(sql, new ExpenseRowMapper(), expense_id);
		
		return expense;
	}

	@Override
	public void deleteExpense(int expense_id) {
		String sql = "DELETE FROM expense WHERE expense_id=?";
		jdbcTemplate.update(sql, expense_id);
	}

}
