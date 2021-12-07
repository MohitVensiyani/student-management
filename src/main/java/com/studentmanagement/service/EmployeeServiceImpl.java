package com.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentmanagement.api.Employee;
import com.studentmanagement.dao.EmployeeDAO;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private EmployeeDAO employeeDAO;

	@Override
	public List<Employee> loadEmployee() {
		
		List<Employee> employeeList = employeeDAO.loadEmployee();

		return employeeList;
	}

	@Override
	public void saveEmployee(Employee employee) {
		employeeDAO.saveEmployee(employee);
	}

	@Override
	public void updateEmployee(Employee employee) {
		employeeDAO.updateEmployee(employee);
	}

	@Override
	public Employee getEmployee(int empId) {
		return employeeDAO.getEmployee(empId);
	}

	@Override
	public void deleteEmployee(int empId) {
		employeeDAO.deleteEmployee(empId);
	}

}
