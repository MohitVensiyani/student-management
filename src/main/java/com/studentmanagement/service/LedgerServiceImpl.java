package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.Expense;
import com.studentmanagement.api.Salary;
import com.studentmanagement.api.StudentFees;
import com.studentmanagement.dao.LedgerDAO;

@Service
public class LedgerServiceImpl implements LedgerService{

	@Autowired
	private LedgerDAO ledgerDAO;
	
	@Override
	public List<Expense> loadExpense(String from, String to) {
		
		List<Expense> expenseList = ledgerDAO.loadExpense(from, to);
		
		return expenseList;
	}

	@Override
	public List<Salary> loadSalary(String from, String to) {

		List<Salary> salaryList = ledgerDAO.loadSalary(from, to);
		return salaryList;
	}

	@Override
	public List<StudentFees> loadFees(String from, String to) {

		List<StudentFees> loadFees = ledgerDAO.loadFees(from, to);
		
		return loadFees;
	}
	
	

}
