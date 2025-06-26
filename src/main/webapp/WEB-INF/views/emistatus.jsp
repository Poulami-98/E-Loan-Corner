<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Easy Loan</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
  <link rel="stylesheet" href="./css/style.css">
  
  <style>
  	body{
  		background: url("https://cdn1.vectorstock.com/i/1000x1000/45/40/soft-abstract-background-in-light-colors-vector-21474540.jpg") no-repeat;
		 width: 100%; height:100vh;background-size: cover;
  	}
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
	<div class="container">
	<h1>EMI Status Page</h1>
	<br/>
<table class="table table-bordered">

			<thead>
				<tr class="success">
					<th>EMI Amount</th>
					<th>EMI Date</th>
					
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${edetails}" var="em">
					<tr class="success">
						<td>${em.amount}</td>
						<td>${em.date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
		
		<div class="container" >
			<p>The Remaining amount to be Paid : ${rem}</p>
		</div>
		
		<p style="margin-left : 5.5cm;">
		<a class="btn btn-danger" href="/login" role="button">Log Out</a>
		<a class="btn btn-success" href="/customer" role="button">back</a>
			</p>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>