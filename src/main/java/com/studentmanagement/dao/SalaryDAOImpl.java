package com.studentmanagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentmanagement.api.Salary;
import com.studentmanagement.rowmapper.EmployeeRowMapper;
import com.studentmanagement.rowmapper.EmployeeSalaryRowMapper;

@Repository
public class SalaryDAOImpl implements SalaryDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Salary> loadSalary(int empId) {
		
//		String sql3 = "SELECT salary.salary_id, salary.month, employee.salary, salary.date, salary.bonus, salary.deduction, salary.reason, salary.mode_of_payment, salary.total_payed FROM salary INNER JOIN employee ON salary.empId = employee.empId";
//		String sql2 = "SELECT `salary`.`salary_id`,`salary`.`month`,`employee`.`salary`,`salary`.`date`,`salary`.`bonus`,`salary`.`deduction`,`salary`.`reason`,`salary`.`mode_of_payment`,`salary`.`total_payed` FROM `feesportal`.`salary` INNER JOIN `feesportal`.`employee` ON `salary`.`empId` = `employee`.`empId`";
		try {
		String sql = "SELECT * FROM salary WHERE empId=?";
		List<Salary> salaryList = jdbcTemplate.query(sql, new EmployeeSalaryRowMapper(), empId);
		
		
		return salaryList;
		}
		catch (EmptyResultDataAccessException e) {
			return null;
		}
		
	}

	@Override
	public void saveSalary(Salary salary, int empId) {
		// TODO Auto-generated method stub
		Object[] sqlParameter = {
				salary.getEmpId(),
				salary.getMonth(),
				salary.getDate(),
				salary.getBonus(),
				salary.getDeduction(),
				salary.getReason(),
				salary.getMode_of_payment(),
				salary.getTotal_payed(),
				
		};
		String sql = "INSERT INTO salary (empId, month, date, bonus, deduction, reason, mode_of_payment, total_payed) VALUES (?,?,?,?,?,?,?,?)";	
		
		jdbcTemplate.update(sql, sqlParameter);
		System.out.println("1 salary record inserted for employee with id : "+empId);

	}

	@Override
	public void updateSalary(Salary salary) {

		Object[] sqlParameter = {
				salary.getMonth(),
				salary.getDate(),
				salary.getBonus(),
				salary.getDeduction(),
				salary.getReason(),
				salary.getMode_of_payment(),
				salary.getTotal_payed(),
				salary.getSalary_id()
		};
		
		String sql = "UPDATE salary SET month=?, date=?, bonus=?, deduction=?, reason=?, mode_of_payment=?, total_payed=? WHERE salary_id=?";
		jdbcTemplate.update(sql, sqlParameter);
		//System.out.println("1 salary record updated for employee with id : "+empId);

	}

	@Override
	public Salary getSalary(int salary_id) {
		String sql = "SELECT * FROM salary WHERE salary_id=?";
		Salary salary = jdbcTemplate.queryForObject(sql, new EmployeeSalaryRowMapper(), salary_id);
		return salary;
	}

	@Override
	public void deleteSalary(int salary_id) {
		try {
			String sql = "DELETE FROM salary WHERE salary_id=?";
			jdbcTemplate.update(sql, salary_id);
			System.out.println("1 salary record Deleted");
			
		
		}
		catch (EmptyResultDataAccessException e) {
			System.out.println(e);
		}

	}

}
