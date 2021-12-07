package com.studentmanagement.dao;

import java.util.List;

import com.studentmanagement.api.Employee;


public interface EmployeeDAO {
	
	List<Employee> loadEmployee();

	void saveEmployee(Employee employee);

	void updateEmployee(Employee employee);

	Employee getEmployee(int empId);

	void deleteEmployee(int empId);

}
