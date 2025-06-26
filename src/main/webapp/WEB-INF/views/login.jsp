<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Easy Loan</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<style type="text/css">
		.carousel-item{
			height: 100vh; min-height: 300px; background: no-repeat scroll center scroll; background-size: cover;
		}
		.carousel-caption {
			bottom:600px; padding-left: 100px; padding-right: 100px;
		}
		.carousel-caption h1{
			font-size: 70px; font-weight: 500;
		}
		footer {
				backgroundcolor:#000;
				font-size: 100%;
				padding: 7px 0px 0px 20px;}
	</style>
	
</head>

<body background = "https://i.pinimg.com/originals/5e/08/57/5e0857cd8f8204ae4415a2ba77569037.jpg">
	
	
	<nav role="navigation" class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<i><font color="red"><b>E-Loan Corner</b></font></i>
		 <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarmenu">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	
		<div class="collapse navbar-collapse" id="navbarmenu">
	
	      <ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link active" href="/login">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="/bankpolicy">Bank Policy for Loan Approval</a></li>
			</ul>
		</div>
	</div>
	</nav>

		<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
		  </div>
		  
		  <div class="carousel-inner text-center">
		    <div class="carousel-item active" data-bs-interval="10000">
		      <img src="https://www.cashe.co.in/wp-content/uploads/2024/01/Loan_Term.png" class="d-block w-100" alt="slide one">
		    
		      <div class="carousel-caption d-none d-md-block">
			      <h1><font color="white">Welcome to E-Loan Corner</font></h1>
			      <h5>Home Loan</h5>        
		      </div>
		    </div>
		    <div class="carousel-item" data-bs-interval="2000">      
		        <img src="https://media.lendingkart.com/wp-content/uploads/2018/07/unsecured-business-loan-is-the-safest-bet-for-growing-your-business.jpg"
		        class="d-block w-100" alt="slide two">
		      <div class="carousel-caption d-none d-md-block">
		      	<h1><font color="white">Welcome to E-Loan Corner</font></h1>
		        < <h5>Business Loan</h5> 
		      </div>
		    </div>
		    <div class="carousel-item">      
		       <img src="https://rsoicalaw.ca/wp-content/uploads/2020/02/money-finance-business-success.jpg"
		       class="d-block w-100" alt="slide three">
		      <div class="carousel-caption d-none d-md-block">
		      	<h1><font color="black">Welcome to E-Loan Corner</font></h1>
		        <h5>Personal Loan</h5>       
		      </div>
		    </div>
		  </div>
		  
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
		
		<br/>
		<br/>
	<div class="container">
		<div class="row">
				<div class="col">
					<div class="card" style="width: 20rem;">
					  <img src="data:image/jpeg;base64,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" 
					  class="card-img-top" alt="Card One">
					  <div class="card-body">
					    <h5 class="card-title">Home Loan</h5>
					    <p class="card-text"> A home loan is an amount of money that is borrowed from a bank or money lending company at...</p>
					    <a href="/home" class="btn btn-primary">Read More...</a>
					  </div>
					</div>
				</div>	
				<div class="col ml-5">
					<div class="card" style="width: 20rem;">
					  <img src="data:image/jpeg;base64,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"
					   class="card-img-top" alt="Card Two">
					  <div class="card-body">
					    <h5 class="card-title">Student Loan</h5>
					    <p class="card-text">The Student Loan Scheme aims at providing financial support from the bank to deserving...</p>
					    <a href="/student" class="btn btn-primary">Read More...</a>
					  </div>
					</div>
				</div>
				<div class="col ml-5">
					<div class="card" style="width: 20rem;">
					  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgfSXLQm1HQ8ouWtwqB0T2fY2uNYrDdD-EWQ&s"
					   class="card-img-top" alt="Card Thtee">
					  <div class="card-body">
					    <h5 class="card-title">Car Loan</h5>
					    <p class="card-text">A car loan is a sum of money a consumer borrows in order to purchase a car...</p>
					    <a href="/car" class="btn btn-primary">Read More...</a>
					  </div>
					</div>
				</div>				
			</div>	
	
		<br/>
		<br/>
		
			<div class="row">
				<div class="col">
					<div class="card" style="width: 20rem;">
					  <img src="https://www.oneindia.com/img/2019/06/personal-loan-1560234151.jpg" 
					  class="card-img-top" alt="Card One">
					  <div class="card-body">
					    <h5 class="card-title">Personal Loan</h5>
					    <p class="card-text">A personal loan is an amount of money you can borrow to use for a variety of purposes...</p>
					    <a href="/personal" class="btn btn-primary">Read More...</a>
					  </div>
					</div>
				</div>	
				<div class="col ml-5">
					<div class="card" style="width: 20rem;">
					  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR-RgAOIrRaB3GhQyigArkLGJkDiaKfWQeMksBQO3zFX7gr8ImkgteJHLEf-nkf7pBhYU&usqp=CAU"
					   class="card-img-top" alt="Card Two">
					  <div class="card-body">
					    <h5 class="card-title">Business Loan</h5>
					    <p class="card-text">A business loan is any type of financing that's used to fund business expenses -- from paying staff wages to.....</p>
					    <a href="/business" class="btn btn-primary">Read More...</a>
					  </div>
					</div>
				</div>
				<div class="col ml-5">
					<div class="card" style="width: 20rem;">
					  <img src="https://m.economictimes.com/thumb/msid-81406782,width-1200,height-900,resizemode-4,imgsize-322938/home-loan-emi-calculation.jpg"
					   class="card-img-top" alt="Card Thtee">
					  <div class="card-body">
					    <h5 class="card-title">EMI Calculator</h5>
					    <p class="card-text">Calculate your EMI amount using this EMI calculator even before taking the loan.</p>
					    <a href="/loancal" class="btn btn-primary">Calculate</a>
					  </div>
					</div>
				</div>			
			</div>
		
		<br/>
		<br/>
		
		<div class="row">
				<div class="col">
					<div class="card" style="width: 20rem;">
					  <img src="https://t3.ftcdn.net/jpg/01/57/34/62/360_F_157346244_A6Oml9kXsQdK3WaVVg91UnzheU0YeFpe.jpg" 
					  class="card-img-top" alt="Card One">
					  <div class="card-body">
					    <h5 class="card-title">Admin Login</h5>
					    <p class="card-text">Admin is requested to login here.</p>
					    <a href="/admin" class="btn btn-primary">Admin Login</a>
					  </div>
					</div>
				</div>	
				<div class="col ml-5">
					<div class="card" style="width: 20rem;">
					  <img src="https://cdn.phpjabbers.com/files/frees/simple-php-user-login-script.jpg"
					   class="card-img-top" alt="Card Two">
					  <div class="card-body">
					    <h5 class="card-title">Customer Login</h5>
					    <p class="card-text">Customers are requested to login here.</p>
					    <a href="/customer" class="btn btn-primary">Customer Login</a>
					  </div>
					</div>
				</div>
				<div class="col ml-5">
					<div class="card" style="width: 20rem;">
					  <img src="https://www.dialabank.com/wp-content/uploads/2019/11/applying-loan-f.png"
					   class="card-img-top" alt="Card Thtee">
					  <div class="card-body">
					    <h5 class="card-title">Apply for Loan</h5>
					    <p class="card-text">Customers are requested to register here for new loan.</p>
					    <a href="/register" class="btn btn-primary">Register</a>
					  </div>
					</div>
				</div>			
			</div>
			<br/>
			<br/>
			<footer>
				&copy;E-Loan Corner
			</footer>
	</div>
	
	<script>
		$(document).ready(function(){
			$('.col').hover(
					//trigger when mouse hover
					function(){
						$(this).animate({
							marginTop: "-=1%",
						},200);
					},
					//trigger when mouse out
					function(){
						$(this).animate({
							marginTop: "0%"
						},200);
					}		
			);
			
		});
	</script>
	
	
	
	<!-- Bootstrap js bundle-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	 integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	 
	 <!-- jQueryCDN minified -->
	<!--  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	  crossorigin="anonymous"></script> -->
	  
	  <!-- Bootstrap js Separate -->
	 <!--  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	   integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" 
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script> -->
</body>
</html>