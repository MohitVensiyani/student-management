package com.studentmanagement.api;

public class Salary {
	private int salary_id;
	private int empId;
	private String month;
	private String date;
	private int salary;
	private int bonus;
	private int deduction;
	private String reason;
	private String mode_of_payment;
	private int total_payed;
	
	public int getSalary_id() {
		return salary_id;
	}
	public void setSalary_id(int salary_id) {
		this.salary_id = salary_id;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getDeduction() {
		return deduction;
	}
	public void setDeduction(int deduction) {
		this.deduction = deduction;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getMode_of_payment() {
		return mode_of_payment;
	}
	public void setMode_of_payment(String mode_of_payment) {
		this.mode_of_payment = mode_of_payment;
	}
	public int getBonus() {
		return bonus;
	}
	public void setBonus(int bonus) {
		this.bonus = bonus;
	}
	public int getTotal_payed() {
		return total_payed;
	}
	public void setTotal_payed(int total_payed) {
		this.total_payed = total_payed;
	}
	@Override
	public String toString() {
		return "Salary [salary_id=" + salary_id + ", empId=" + empId + ", month=" + month + ", date=" + date
				+ ", salary=" + salary + ", bonus=" + bonus + ", deduction=" + deduction + ", reason=" + reason
				+ ", mode_of_payment=" + mode_of_payment + ", total_payed=" + total_payed + "]";
	}
	
	
	
	
	
	
	

}
