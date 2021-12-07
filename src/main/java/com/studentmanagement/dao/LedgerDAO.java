package com.studentmanagement.dao;

import java.util.List;

import com.studentmanagement.api.Expense;
import com.studentmanagement.api.Salary;
import com.studentmanagement.api.StudentFees;

public interface LedgerDAO {
	
	List<Expense> loadExpense(String from, String to);
	
	List<Salary> loadSalary(String from, String to);
	
	List<StudentFees> loadFees(String from, String to);
	

}
