package com.studentmanagement.dao;

import java.util.List;

import com.studentmanagement.api.Salary;

public interface SalaryDAO {

	List<Salary> loadSalary(int empId);

	void saveSalary(Salary salary, int empId);

	void updateSalary(Salary salary);

	Salary getSalary(int salary_id);

	void deleteSalary(int salary_id);
}
