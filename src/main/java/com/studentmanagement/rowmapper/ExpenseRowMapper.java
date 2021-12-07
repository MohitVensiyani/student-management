package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.Expense;

public class ExpenseRowMapper implements RowMapper<Expense>{

	@Override
	public Expense mapRow(ResultSet rs, int rowNum) throws SQLException {

		Expense expense = new Expense();
		expense.setExpense_id(rs.getInt("expense_id"));
		expense.setExpense_name(rs.getString("expense_name"));
		expense.setDescription(rs.getString("description"));
		expense.setExpense_date(rs.getString("expense_date"));
		expense.setAmount(rs.getInt("amount"));
		return expense;
	}

}
