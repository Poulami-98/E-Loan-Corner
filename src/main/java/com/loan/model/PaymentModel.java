package com.loan.model;

public class PaymentModel {
	
	public double amount;
	public String dates;
	

	public PaymentModel(double amount,String dates)
	{
		this.amount=amount;
		this.dates=dates;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	public String getDates() {
		return dates;
	}

	public void setDates(String dates) {
		this.dates = dates;
	}
	

}
