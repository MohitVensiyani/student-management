package com.studentmanagement.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.studentmanagement.api.Employee;
import com.studentmanagement.api.Salary;
import com.studentmanagement.service.EmployeeService;
import com.studentmanagement.service.SalaryService;

@Controller
public class SalaryController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private SalaryService salaryService;
	
	@GetMapping("payrollEmployee")
	public String payRollEmployee(@RequestParam("userId") int empId,Model model, HttpServletRequest request, HttpServletResponse response) {
		Employee employee = employeeService.getEmployee(empId);
		System.out.println(employee.getEmpName());
		request.setAttribute("employees", employee);
		
		List<Salary> salaryList = salaryService.loadSalary(empId);
		model.addAttribute("salaries", salaryList);
		return "employee-pay-roll";
	}
	

	
	@GetMapping("paySalary")
	public String addPaySalary(@RequestParam("userId") int empId, Model model, HttpServletRequest req, HttpServletResponse res) throws IOException {
		Employee employeeData = employeeService.getEmployee(empId);
		System.out.println(employeeData.getEmpId() + " " + employeeData.getRole());
		req.setAttribute("employees", employeeData);
		Salary salary = new Salary();
		salary.setEmpId(empId);
		model.addAttribute("salary", salary);
		//String employeeId =Integer.toString(empId);
		//res.sendRedirect("pay-salary");
		return "pay-salary";
	}
	
	@GetMapping("save-salary")
	public void savePaySalary(Salary salary, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int empId = salary.getEmpId();
		
		if(salary.getSalary_id() == 0) {
			salaryService.saveSalary(salary, empId );
		}
//		else {
//			salaryService.updateSalary(salary);
//		}
		//String employeeId =Integer.toString(empId);
		
		response.sendRedirect("payrollEmployee?userId="+empId);
		
		//return "redirect:/payrollEmployee?userId="+empId;

	}
	
//	@GetMapping("updateSalary")
//	public String updateSalary(@RequestParam("userId") int salary_id, Model model, HttpServletRequest req, HttpServletResponse res) {
//		Salary salary = salaryService.getSalary(salary_id);
//		model.addAttribute("salary", salary);
//		return "pay-salary";
//	}
//	
//	@GetMapping("deleteSalary")
//	public String deleteSalary(@RequestParam("userId") int salary_id, HttpServletResponse res) {
//		salaryService.deleteSalary(salary_id);
//		Salary salary = salaryService.getSalary(salary_id);
//		
//		int empId = salary.getEmpId();
//		
//		return "redirect:/showEmployee";
////		res.sendRedirect("payrollEmployee?userId="+empId);
//	}
	
}





























