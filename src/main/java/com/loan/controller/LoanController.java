package com.loan.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.loan.dao.CustomerDAO;
import com.loan.model.EmiDetails;
import com.loan.service.AdminService;
import com.loan.service.CustomerService;
import com.loanException.InvalidEmiAmountException;

@Controller
public class LoanController 
{
	public double emiValue;
	public int ten;
	@Autowired
	AdminService service;
	@Autowired
	CustomerService servicecust;
	
	
	@GetMapping("/login")
	public String showLoginPage(ModelMap model)
	{
		return "login";
	}
	@GetMapping("/bankpolicy")
	public String showPolicyPage(ModelMap model)
	{
		return "bankpolicy";
	}
	@GetMapping(value="/Customer-register")
	public String showCustPage1(ModelMap model)
	{
		return "Customer-register";
	}
	@GetMapping("/admin")
	public String showLoginPage1(ModelMap model)
	{
		return "admin";
	}
	@PostMapping("/admin")
	public String showWelcomePage2(ModelMap model, @RequestParam String name, @RequestParam String password) throws SQLException
	{
		model.clear();
		boolean isValidUser = service.validateUser(name, password);
		
		if (!isValidUser) {
			model.put("errorMessage", "Invalid Credentials");
			return "admin";
		}
		
		service.retrieveCustomerDetails();
		model.addAttribute("custdetails", service.retrieveCustDetails());
		System.out.println(service.retrieveCustDetails());
		return "custdetails";
	}
	@GetMapping("/custdetails")
	public String showLoginPage4(ModelMap model)
	{
		model.addAttribute("custdetails", service.retrieveCustDetails());
		return "custdetails";
	}
	@GetMapping("/approve")
	public String showWelcomePage3(ModelMap model, @RequestParam int id) throws SQLException
	{
		model.clear();
		service.approve(id);
		service.retrieveCustomerDetails();
		model.addAttribute("custdetails", service.retrieveCustDetails());
		System.out.println(service.retrieveCustDetails());
		return "redirect:/custdetails";
	}
	@GetMapping(value="/reject")
	public String showWelcomePage5(ModelMap model, @RequestParam int id) throws SQLException
	{
		model.clear();
		service.reject(id);
		service.retrieveCustomerDetails();
		model.addAttribute("custdetails", service.retrieveCustDetails());
		System.out.println(service.retrieveCustDetails());
		return "redirect:/custdetails";
	}
	@GetMapping("/customer")
	public String showLoginPage6(ModelMap model)
	{
		return "customer";
	}
	@GetMapping("/loaninfo")
	public String showLoginPage9(ModelMap model)
	{
		return "customer";
	}
	@PostMapping("/loaninfo")
	public String handleUserLogin(ModelMap model, @RequestParam int id, @RequestParam String name, @RequestParam String password)
			throws SQLException {
		model.clear();
		int flag1=0,flag2=0;
		if (!servicecust.validateLogin(name,password)) {
			model.put("errorMessage", "Invalid Credentials");
			flag1=1;
		}
		if (!servicecust.validateLogin2(id,name)) {
			model.put("errorMessage", "Invalid Credentials");
			flag2=1;
		}
		if(flag1==1||flag2==1) {
			return "customer";
		}
		servicecust.retrieveCustomerDetailsCust(id);
		model.put("status", servicecust.loan_status);
		model.put("name", servicecust.name1);
		model.put("id",servicecust.id);
		model.put("phone_no",servicecust.phone);
		model.put("amount",servicecust.amount);
		model.put("income",servicecust.income);
		model.put("loan_type",servicecust.loan_type);
		model.put("tenure",servicecust.tenure);
		model.put("rate",servicecust.rate);
		model.put("emi",servicecust.emi);
		model.put("l_d",servicecust.l_d);
		emiValue=servicecust.emi;
		 ten = servicecust.tenure;
		
		return "loaninfo";
		
	}
	@GetMapping("/register")
	public String showLoginPage7(ModelMap model)
	{
		return "register";
	}
	@PostMapping( "/registrationsuccess")
	public String registerSuccess(ModelMap model, @RequestParam String name, @RequestParam String gender,
			@RequestParam long phone, @RequestParam(required=false,name="mail") String e_mail, @RequestParam String loan_type, @RequestParam int tenure,
			@RequestParam int loan_amount, @RequestParam int annual_income, @RequestParam String password, @RequestParam long aadhaar,
			@RequestParam String pan, @RequestParam String dob) throws SQLException
	{
		int flag1=0,flag2=0,flag3=0,flag4=0,flag5=0,flag6=0;
		
		
		if(!servicecust.validateDOB(dob))
		{
			model.put("errorDob","Your age should be above 18 years");
			flag1=1;
			//return "redirect:/register";
		}
		if(!servicecust.validatePhone(phone))
		{
			model.put("errorPhone","Phone No should start with 7/8/9 and must be 10 digit ");
			flag2=1;
			//return "redirect:/register";
		}
		if(!servicecust.validateEmail(e_mail))
		{
			model.put("errorEmail","Please give a valid email I'd");
			flag3=1;
			//return "redirect:/register";
		}
		if(!servicecust.validateIncome(annual_income))
		{
			model.put("errorMessage","Annual Income cannot be less than Rs.200000");
			flag4=1;
			//return "redirect:/register";
		}
		if(!servicecust.validateAadhaar(aadhaar))
		{
			model.put("errorAadhaar","Aadhaar no. should be 12 digits");
			flag5=1;
			//return "redirect:/register";
		}
		if(!servicecust.validatePan(pan))
		{
			model.put("errorPan","Pan no should be 10 digits");
			flag6=1;
			//return "redirect:/register";
		}
		if(flag1==1||flag2==1||flag3==1||flag4==1||flag5==1||flag6==1) {
			return "register";
		}
		servicecust.newRegister(name,gender,dob,phone,e_mail,loan_type,tenure,loan_amount,annual_income,aadhaar,pan); 
		servicecust.newCust(name,password);
		servicecust.retrieveCustomerId(name);
		model.put("loanId", servicecust.id);
		//System.out.println(dob);
		return "registrationsuccess";
	}

	
	@RequestMapping("/update/{loanID}")
	public String updateForm(@PathVariable("loanID")  int pid,ModelMap model) throws SQLException
	{
		servicecust.getCustomerDetails(pid);
		//model.put("status", servicecust.loan_status);
		model.put("name", servicecust.name1);
		model.put("id",servicecust.id);
		model.put("phone_no",servicecust.phone);
		model.put("amount",servicecust.amount);
		model.put("income",servicecust.income);
		model.put("loan_type",servicecust.loan_type);	
		//model.put("gender",servicecust.gender);
		model.put("dob",servicecust.dob);
		model.put("aadhaar",servicecust.aadhaar);
		model.put("pan",servicecust.pan);
		model.put("tenure",servicecust.tenure);
		model.put("e_mail",servicecust.mail);
		return"update_form";
	}
	
	@PostMapping( "/updationsuccess")
	public String upgradeSuccess(ModelMap model, @RequestParam String name,@RequestParam long phone,@RequestParam int id, 
			@RequestParam(required=false,name="mail") String e_mail, @RequestParam String loan_type, @RequestParam int tenure,
			@RequestParam int loan_amount, @RequestParam int annual_income, @RequestParam long aadhaar,
			@RequestParam String pan, @RequestParam String dob) throws SQLException
	{
		int flag1=0,flag2=0,flag3=0,flag4=0,flag5=0,flag6=0;
				
				if(!servicecust.validateDOB(dob))
				{
					model.put("errorDob","Your age should be above 18 years");
					flag1=1;
					//return "redirect:/register";
				}
				if(!servicecust.validatePhone(phone))
				{
					model.put("errorPhone","Phone No should start with 7/8/9 and must be 10 digit ");
					flag2=1;
					//return "redirect:/register";
				}
				if(!servicecust.validateEmail(e_mail))
				{
					model.put("errorEmail","Please give a valid email I'd");
					flag3=1;
					//return "redirect:/register";
				}
				if(!servicecust.validateIncome(annual_income))
				{
					model.put("errorMessage","Annual Income cannot be less than Rs.200000");
					flag4=1;
					//return "redirect:/register";
				}
				if(!servicecust.validateAadhaar(aadhaar))
				{
					model.put("errorAadhaar","Aadhaar no. should be 12 digits");
					flag5=1;
					//return "redirect:/register";
				}
				if(!servicecust.validatePan(pan))
				{
					model.put("errorPan","Pan no should be 10 digits");
					flag6=1;
					//return "redirect:/register";
				}
				if(flag1==1||flag2==1||flag3==1||flag4==1||flag5==1||flag6==1) {
					return "register";
				}
		servicecust.oldRegister(id,name,dob,phone,e_mail,loan_type,tenure,loan_amount,annual_income,aadhaar,pan);
		//servicecust.oldCust(name,password,id);
		servicecust.getCustomerDetails(id);
		model.put("loanId", servicecust.id);
		return "updationsuccess";
	}
	
	@GetMapping("/payment")
	public String showPaymentPage(ModelMap model)
	{
		return "payment";
	}
	
	@PostMapping("/emistatus")
	public String getPaymentPage(ModelMap model, @RequestParam int cust, @RequestParam double amt)throws Exception
	{
		
		if((emiValue*ten*12)<amt)
		{
			throw new Exception("Your EMI amount is greater than your total repayment amount");
		}
		else {
		if(CustomerDAO.validateLoan(cust))
		{
			CustomerDAO.addData(cust, amt);
			ArrayList<EmiDetails> lists=servicecust.getStatus(cust,amt,emiValue);
			model.addAttribute("edetails",lists);
			model.put("rem",servicecust.rem);
			return "emistatus";
		}
		else
			return "customer";
		}
	}
	
	@GetMapping("/loancal")
	public String l1(ModelMap model)
	{
		return "loancal";
	}
	
	@GetMapping("/acceptCondition")
	public String details(ModelMap model)
	{
		return "acceptCondition";
	}
	@PostMapping("/dateAmount")
	public String showStatementPage(ModelMap model,@RequestParam int id,@RequestParam String sd,@RequestParam String ed) throws SQLException
	{
		model.addAttribute("pays",servicecust.getStatement(id,sd,ed));
		//System.out.println(servicecust.getStatement(id,sd,ed));
		model.put("id",servicecust.id);
		return "dateAmount";
	}
	
	@GetMapping("/student")
	public String sl(ModelMap model)
	{
		return "student";
	}
	
	@GetMapping("/home")
	public String hl(ModelMap model)
	{
		return "home";
	}
	
	@GetMapping("/car")
	public String cl(ModelMap model)
	{
		return "car";
	}
	
	@GetMapping("/personal")
	public String pl(ModelMap model)
	{
		return "personal";
	}
	
	@GetMapping("/business")
	public String bl(ModelMap model)
	{
		return "business";
	}

}
