package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.Employee;
import com.studentmanagement.api.Salary;
import com.studentmanagement.dao.EmployeeDAO;
import com.studentmanagement.dao.SalaryDAO;

@Service
public class SalaryServiceImpl implements SalaryService{

	@Autowired
	private SalaryDAO salaryDAO;
	
	@Autowired
	private EmployeeDAO employeeDAO;
	
	
	@Override
	public List<Salary> loadSalary(int empId) {
		
		List<Salary> salaryList = salaryDAO.loadSalary(empId);
		
		return salaryList;
	}

	@Override
	public void saveSalary(Salary salary, int empId) {		
		Employee employee = employeeDAO.getEmployee(empId);
		int total_salary = (employee.getSalary() + salary.getBonus() - salary.getDeduction());
		salary.setTotal_payed(total_salary);
		salary.setEmpId(empId);
		salaryDAO.saveSalary(salary, empId);
	}

	@Override
	public void updateSalary(Salary salary) {
		int total = salary.getSalary() + salary.getBonus() - salary.getDeduction();
		salary.setTotal_payed(total);
		salaryDAO.updateSalary(salary);
	}

	@Override
	public Salary getSalary(int salary_id) {
		return salaryDAO.getSalary(salary_id);
	}

	@Override
	public void deleteSalary(int salary_id) {
		Salary salary = salaryDAO.getSalary(salary_id);
		System.out.println(salary.getSalary_id()+" "+salary.getEmpId());
		salaryDAO.deleteSalary(salary_id);
	}

}


