package com.studentmanagement.dao;

import java.util.List;

import com.studentmanagement.api.Expense;

public interface ExpenseDAO {

	List<Expense> loadExpense();

	void saveExpenses(Expense expense);

	void updateExpenses(Expense expense);

	Expense getExpense(int expense_id);

	void deleteExpense(int expense_id);
}
