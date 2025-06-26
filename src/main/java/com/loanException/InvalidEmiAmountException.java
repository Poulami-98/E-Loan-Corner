package com.loanException;

public class InvalidEmiAmountException extends Exception{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public InvalidEmiAmountException(String message)
	{
		super(message);
	}

}
