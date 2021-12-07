package com.studentmanagement.api;

public class Expense {

	private int expense_id;
	private String expense_name;
	private String description;
	private String expense_date;
	private Integer amount;
	public int getExpense_id() {
		return expense_id;
	}
	public void setExpense_id(int expense_id) {
		this.expense_id = expense_id;
	}
	public String getExpense_name() {
		return expense_name;
	}
	public void setExpense_name(String expense_name) {
		this.expense_name = expense_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getExpense_date() {
		return expense_date;
	}
	public void setExpense_date(String expense_date) {
		this.expense_date = expense_date;
	}
	
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "Expense [expense_id=" + expense_id + ", expense_name=" + expense_name + ", description=" + description
				+ ", expense_date=" + expense_date + ", amount=" + amount + "]";
	}
	
	
	
	
}
