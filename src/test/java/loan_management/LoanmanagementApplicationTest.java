package loan_management;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.sql.SQLException;

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.loan.service.AdminService;
import com.loan.service.CustomerService;

@SpringBootTest(classes=LoanmanagementApplicationTest.class)

public class LoanmanagementApplicationTest {

CustomerService servicecust= new CustomerService();
AdminService service=new AdminService();

	

  @Test void validateLoginTest()  { 
	
  try {
	assertTrue(servicecust.validateLogin("Liza","lizaa"));
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} 
  
  try {
	assertFalse(servicecust.validateLogin("John","jhon"));
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} 
  }
 
@Test
	void validateIncomeTest()
	{
		
		assertFalse(servicecust.validateIncome(15000));
		assertTrue(servicecust.validateIncome(250000));
	}
@Test
 void validateEmailTest()
 {
	assertFalse(servicecust.validateEmail("123"));
	assertFalse(servicecust.validateEmail("123.com"));
	assertFalse(servicecust.validateEmail("123@"));
	assertTrue(servicecust.validateEmail("123@gmail.com"));

 }

@Test
void validatePhoneTest()
{
	assertFalse(servicecust.validatePhone(12345678L));
	assertFalse(servicecust.validatePhone(123L));
	
	assertTrue(servicecust.validatePhone(7896541230L));

}


  @Test 
  void validateUserTest() {
assertFalse(service.validateUser("addmin","1452"));
 assertTrue(service.validateUser("admin","12345")); 
 
  }
 


}