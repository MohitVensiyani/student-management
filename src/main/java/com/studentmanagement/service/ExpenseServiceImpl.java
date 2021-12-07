package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.Expense;
import com.studentmanagement.dao.ExpenseDAO;

@Service
public class ExpenseServiceImpl implements ExpenseService{

	@Autowired
	private ExpenseDAO expenseDAO;
	
	@Override
	public List<Expense> loadExpense() {
		List<Expense> expenseList = expenseDAO.loadExpense();
		return expenseList;
	}

	@Override
	public void saveExpenses(Expense expense) {
		expenseDAO.saveExpenses(expense);
	}

	@Override
	public void updateExpenses(Expense expense) {
		expenseDAO.updateExpenses(expense);
	}

	@Override
	public Expense getExpense(int expense_id) {
		
		return expenseDAO.getExpense(expense_id);
	}

	@Override
	public void deleteExpense(int expense_id) {
		expenseDAO.deleteExpense(expense_id);
	}
	

}
