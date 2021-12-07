package com.studentmanagement.service;

import java.util.List;

import com.studentmanagement.api.Expense;


public interface ExpenseService {

	List<Expense> loadExpense();

	void saveExpenses(Expense expense);

	void updateExpenses(Expense expense);

	Expense getExpense(int expense_id);

	void deleteExpense(int expense_id);
	
}
