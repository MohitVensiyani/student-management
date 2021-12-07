package com.studentmanagement.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.studentmanagement.api.Employee;
import com.studentmanagement.api.Salary;
import com.studentmanagement.exportExcel.EmployeeExcelReportView;
import com.studentmanagement.service.EmployeeService;
import com.studentmanagement.service.SalaryService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private SalaryService salaryService;
	
	@GetMapping("/showEmployee")
	public String getEmployee(Model model) {
		List<Employee> employeeList = employeeService.loadEmployee();
		for(Employee tempEmployee : employeeList) {
			System.out.println(tempEmployee);
		}
		model.addAttribute("employees", employeeList);

		return "employee-list";
	}
	
	@GetMapping("showAddEmployeePage")
	public String addEmployee(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "add-employee";
	}
	
	@PostMapping("save-employee")
	public String saveExpense(Employee employee) {
		
		if(employee.getEmpId() == 0) {
			employeeService.saveEmployee(employee);
		}
		else {
			employeeService.updateEmployee(employee);
		}
		
		return "redirect:/showEmployee";
	}
	
	@GetMapping("/updateEmployee")
	public String updateEmployee(@RequestParam("userId") int empId, Model model) {
		System.out.println("Looking for employee with employee id : " +empId);
		
		Employee employee = employeeService.getEmployee(empId);
		
		model.addAttribute("employee", employee);
		return "add-employee";
	}
	
	@GetMapping("deleteEmployee")
	public String deleteEmployee(@RequestParam("userId") int empId) {
		employeeService.deleteEmployee(empId);
		return "redirect:/showEmployee";
	}
	
//	@GetMapping("payrollEmployee")
//	public String payRollEmployee(@RequestParam("userId") int empId,Model model, HttpServletRequest request, HttpServletResponse response) {
//		Employee employee = employeeService.getEmployee(empId);
//		System.out.println(employee.getEmpName());
//		request.setAttribute("employees", employee);
//		
//		List<Salary> salaryList = salaryService.loadSalary(empId);
//		model.addAttribute("salaries", salaryList);
//		return "employee-pay-roll";
//	}
//	
	
	@GetMapping("/employee-report")
	public ModelAndView getExcel() {
		List<Employee> employeeList = employeeService.loadEmployee();
		return new ModelAndView(new EmployeeExcelReportView(), "employeeList", employeeList);
	}
}



























