package com.studentmanagement.api;

public class StudentFees {

	private int fees_id;
	private int id;
	private String date;
	private int amount;
	private int remaining_balance;
	
	
	public int getFees_id() {
		return fees_id;
	}
	public void setFees_id(int fees_id) {
		this.fees_id = fees_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getRemaining_balance() {
		return remaining_balance;
	}
	public void setRemaining_balance(int remaining_balance) {
		this.remaining_balance = remaining_balance;
	}
	
	@Override
	public String toString() {
		return "StudentFees [fees_id=" + fees_id + ", id=" + id + ", date=" + date + ", amount=" + amount
				+ ", remaining_balance=" + remaining_balance + "]";
	}
	
	
}
