<!DOCTYPE html>
<html>
<head>
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
	<div class=container>
		<h1><font color="green">Loan Application Successful !!</font></h1>
		<p><font color="red"><i>Your application is submitted.<br/> 
		Your Application ID is <big><b>' ${loanId} '</b></big>.<br/> 
		You will be receiving further notification from bank.</i></font></p>
		<h2>Thank you for choosing E-Loan Corner</h2><br><br>
	</div>
	<div>
	<p style="margin-left : 5.7cm">
			<a class="btn btn-success" href="/register" role="button">back</a>
			<a class="btn btn-success" href="update/${loanId}" role="button">click here for update</a>
			</p>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>