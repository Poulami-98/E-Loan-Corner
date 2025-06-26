package com.loan.controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class Exceptioncontroller {
	@ExceptionHandler(Exception.class)
	public ModelAndView handleException(Exception ex)
	{
	    //Do something additional if required
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.setViewName("error");
	    modelAndView.addObject("msg", ex.getMessage());
	    return modelAndView;
	}
}
