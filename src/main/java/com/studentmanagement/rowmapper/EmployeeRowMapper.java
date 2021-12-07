package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.Employee;

public class EmployeeRowMapper implements RowMapper<Employee>{

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {

		Employee employee = new Employee();
		employee.setEmpId(rs.getInt("empId"));
		employee.setEmpName(rs.getString("empName"));
		employee.setRole(rs.getString("role"));
		employee.setSalary(rs.getInt("salary"));
		employee.setBank(rs.getString("bank"));
		employee.setAcc_no(rs.getString("acc_no"));
		employee.setIfsc(rs.getString("ifsc"));
		employee.setBranch(rs.getString("branch"));
		return employee;
	}

}
