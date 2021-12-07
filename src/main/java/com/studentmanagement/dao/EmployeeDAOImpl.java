package com.studentmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.Employee;
import com.studentmanagement.rowmapper.EmployeeRowMapper;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Employee> loadEmployee() {
		
		String sql = "SELECT * FROM employee";
		
		List<Employee> employeeList = jdbcTemplate.query(sql, new EmployeeRowMapper());

		return employeeList;
	}

	@Override
	public void saveEmployee(Employee employee) {
		Object[] sqlParameter = {employee.getEmpName(),
				employee.getRole(),
				employee.getSalary(),
				employee.getBank(),
				employee.getAcc_no(),
				employee.getIfsc(),
				employee.getBranch()};
		String sql = "INSERT INTO employee(empName, role, salary, bank, acc_no, ifsc, branch) VALUES(?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 employee record inserted");
	}

	@Override
	public void updateEmployee(Employee employee) {
		Object[] sqlParameter = {employee.getEmpName(),
				employee.getRole(),
				employee.getSalary(),
				employee.getBank(),
				employee.getAcc_no(),
				employee.getIfsc(),
				employee.getBranch(),
				employee.getEmpId()};
		String sql = "UPDATE employee SET empName=?, role=?, salary=?, bank=?, acc_no=?, ifsc=?, branch=? WHERE empId=?";
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 employee record updated");
	}

	@Override
	public Employee getEmployee(int empId) {

		String sql = "SELECT * FROM employee WHERE empId=?";
		Employee employee = jdbcTemplate.queryForObject(sql, new EmployeeRowMapper(), empId);
		return employee;
	}

	@Override
	public void deleteEmployee(int empId) {
		String sql = "DELETE FROM employee WHERE empId=?";
		jdbcTemplate.update(sql, empId);
		System.out.println("1 employee record Deleted");
	}

}
