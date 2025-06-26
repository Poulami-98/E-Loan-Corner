<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
  <link rel="stylesheet" href="./css/style.css">
  
  <style>
		body{color:#fff;
		background: url("https://images.pexels.com/photos/2680270/pexels-photo-2680270.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500") no-repeat;
		 width: 100%; height:100vh;background-size: cover;
		}
		.form-container{border:0px solid #fff; padding:50px 60px; margin-top:10vh;
		-webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
		-moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
		box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);}
		
	</style>
</head>
<body>
	
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
	<br/>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<!-- form start -->
				
					<form class="form-container" action="/emistatus" method="POST">
					<h1>Pay your EMI</h1>
					<p>
						<font color="red"><b>${errorMessage}</b></font>
					</p>
					  <div class="mb-3">
					    <label class="form-label">Customer ID</label>
					    <input name="cust" type="number" class="form-control" />					    
					  </div>
					  <div class="mb-3">
					    <label class="form-label">EMI Amount</label>
					    <input name="amt" type="number" class="form-control" />
					   </div>					  
					  <br/>
						 <button type="submit" class="btn btn-success">Pay</button>
						<button type="reset" class="btn btn-success">Reset</button>
						<p style="margin-top : 1cm;">
							<a class="btn btn-success" href="/customer" role="button">back</a>
						</p>
					</form>
				<!-- form end -->
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
		</div>
	</div>
</body>
</html>