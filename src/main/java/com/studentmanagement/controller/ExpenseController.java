package com.studentmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.studentmanagement.api.Expense;
import com.studentmanagement.exportExcel.ExpenseExcelReportView;
import com.studentmanagement.service.ExpenseService;

@Controller
public class ExpenseController {
	
	@Autowired
	private ExpenseService expenseService;

	@GetMapping("/showExpense")
	public String getExpense(Model model) {
		
		List<Expense> expenseList = expenseService.loadExpense();
		
		for(Expense tempExpense : expenseList) {
			System.out.println(tempExpense);
		}
		
		model.addAttribute("expenses", expenseList);
		
		
		return "expense-list";
	}
	

	@GetMapping("showAddExpensePage")
	public String addExpense(Model model) {
		Expense expense = new Expense();
		model.addAttribute("expense", expense);
		return "add-expense";
	}
	
	@PostMapping("save-expense")
	public String saveExpenses(Expense expense) {
		
		if(expense.getExpense_id() == 0) {
			expenseService.saveExpenses(expense);
		}
		else {
			expenseService.updateExpenses(expense);
		}
		
		return "redirect:/showExpense";
	}
	
	@GetMapping("/updateExpense")
	public String updateExpense(@RequestParam("userId") int expense_id, Model model) {
		System.out.println("Looking for Expense with id " + expense_id);
		
		Expense theExpense = expenseService.getExpense(expense_id);
		
		model.addAttribute("expense", theExpense);

		return "add-expense";
	}
	
	@GetMapping("/deleteExpense")
	public String deleteExpense(@RequestParam("userId") int expense_id) {
		
		expenseService.deleteExpense(expense_id);
		return "redirect:/showExpense";
	}
	
	@GetMapping("/report")
	public ModelAndView getExcel() {
		List<Expense> expenseList = expenseService.loadExpense(); 
		
		return new ModelAndView(new ExpenseExcelReportView(), "expenseList", expenseList);
	}

}






