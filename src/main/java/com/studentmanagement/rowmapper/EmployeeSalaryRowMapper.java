package com.studentmanagement.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentmanagement.api.Employee;
import com.studentmanagement.api.Salary;

public class EmployeeSalaryRowMapper implements RowMapper<Salary>{

	@Override
	public Salary mapRow(ResultSet rs, int rowNum) throws SQLException {

		Salary salary = new Salary();
		Employee employee = new Employee();
		salary.setSalary_id(rs.getInt("salary_id"));
		salary.setEmpId(rs.getInt("empId"));
		salary.setMonth(rs.getString("month"));
		salary.setDate(rs.getString("date"));
		salary.setSalary(rs.getInt("salary"));
		employee.setSalary(rs.getInt("salary"));
		salary.setBonus(rs.getInt("bonus"));
		salary.setDeduction(rs.getInt("deduction"));
		salary.setReason(rs.getString("reason"));
		salary.setMode_of_payment(rs.getString("mode_of_payment"));
		salary.setTotal_payed(rs.getInt("total_payed"));
		employee.setEmpId(rs.getInt("empId"));
		
		return salary;
	}

}
