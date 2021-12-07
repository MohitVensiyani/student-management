package com.studentmanagement.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.studentmanagement.api.Expense;
import com.studentmanagement.api.Salary;
import com.studentmanagement.api.StudentFees;
import com.studentmanagement.exportExcel.ExpenseExcelReportView;
import com.studentmanagement.service.LedgerService;

@Controller
public class LedgerController{
	
	@Autowired
	private LedgerService ledgerService;
	
	@GetMapping("/showLedger")
	public String showLedger() {
		
		
		return "ledger-list";
	}
	
	@GetMapping("show-report")
	public String loadLedger(Model model, @RequestParam String from, String to) {
		
		List<Expense> expenseList = ledgerService.loadExpense(from, to);
		
		List<Salary> salaryList = ledgerService.loadSalary(from, to);
		
		List<StudentFees> feesList = ledgerService.loadFees(from, to);
		
		List<Integer> debit = new ArrayList<Integer>();
		List<Integer> credit = new ArrayList<Integer>();
		List<String> creditDate = new ArrayList<String>();
		List<String> debitDate = new ArrayList<String>();
		List<String> creditPurpose = new ArrayList<String>();
		List<String> debitPurpose = new ArrayList<String>();
		List<Integer> creditId = new ArrayList<Integer>();
		List<Integer> debitId = new ArrayList<Integer>();
		
	
		
		
		for(Expense tempExpense : expenseList) {
			debit.add(tempExpense.getAmount());
			debitDate.add(tempExpense.getExpense_date());
			debitPurpose.add(tempExpense.getDescription());
			debitId.add(tempExpense.getExpense_id());
		}
		for(Salary tempSalary : salaryList) {
			debit.add(tempSalary.getTotal_payed());
			debitDate.add(tempSalary.getDate());
			debitPurpose.add("Salary Paid to Emplyoyee with id : "+tempSalary.getEmpId());
			debitId.add(tempSalary.getSalary_id());
		}
		for(StudentFees tempFees : feesList) {
			credit.add(tempFees.getAmount());
			creditDate.add(tempFees.getDate());
			creditPurpose.add("Fees Paid by Student with id : " + tempFees.getId());
			creditId.add(tempFees.getFees_id());
		}
		
		int creditSum = 0;
		int debitSum = 0;
		for(int i=0;i<credit.size();i++) {
			creditSum += credit.get(i);
		}
		for(int i=0;i<debit.size();i++) {
			debitSum += debit.get(i);
		}
		
		
		
		
		
		System.err.println("======================= debit ========================");
		System.out.println(Arrays.toString(debit.toArray()));
		System.err.println("======================= credit ========================");
		System.out.println(Arrays.toString(credit.toArray()));


		System.out.println(from + " " + to);
		
		model.addAttribute("credit", credit);
		model.addAttribute("debit", debit);
		model.addAttribute("debitDate", debitDate);
		model.addAttribute("creditDate", creditDate);
		model.addAttribute("creditPurpose", creditPurpose);
		model.addAttribute("debitPurpose", debitPurpose);
		model.addAttribute("creditId", creditId);
		model.addAttribute("debitId", debitId);
		model.addAttribute("debitSum", debitSum);
		model.addAttribute("creditSum", creditSum);
		
		
		
		return "ledger-list";
	}
	
	
	/*
	 * @GetMapping("/report") public ModelAndView getExcel(@RequestParam String
	 * from, String to) {
	 * 
	 * List<Expense> expenseList = ledgerService.loadExpense(from, to);
	 * 
	 * List<Salary> salaryList = ledgerService.loadSalary(from, to);
	 * 
	 * List<StudentFees> feesList = ledgerService.loadFees(from, to);
	 * 
	 * Map<String, Object> data = new HashMap<String, Object>();
	 * 
	 * 
	 * data.put("feesList", feesList); data.put("expenseList", expenseList);
	 * data.put("salaryList", salaryList);
	 * 
	 * ModelAndView modelAndView = new ModelAndView("list");
	 * modelAndView.addObject("expenseList", expenseList);
	 * modelAndView.addObject("salaryList", salaryList);
	 * modelAndView.addObject("feesList", feesList);
	 * 
	 * 
	 * return new ModelAndView(new ExpenseExcelReportView(), "data", data); }
	 * 
	 */
	

}
