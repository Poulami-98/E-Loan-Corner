<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
  		background: url("https://png.pngtree.com/thumb_back/fh260/back_our/20190620/ourmid/pngtree-loan-poster-background-material-image_154549.jpg") no-repeat;
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
			<a class="btn btn-success" href="/login" role="button">back</a>
		</ul>
	</div>
</div>
</nav>
<script language="JavaScript">
<!--
function showpay() {
 if ((document.calc.loan.value == null || document.calc.loan.value.length == 0) ||
     (document.calc.months.value == null || document.calc.months.value.length == 0)
||
     (document.calc.rate.value == null || document.calc.rate.value.length == 0))
 { document.calc.pay.value = "Incomplete data";
 }
 else
 {
 var princ = document.calc.loan.value;
 var term  = document.calc.months.value;
 var intr   = document.calc.rate.value / 1200;
 document.calc.pay.value = princ * intr / (1 - (Math.pow(1/(1 + intr), term)));
 }

// payment = principle * monthly interest/(1 - (1/(1+MonthlyInterest)*Months))

}

// -->
</script>


<p>
<center>
<form name=calc method=POST>
<table width=60% border=0>
<tr><th bgcolor="#ffd" width=60%><font color=black>Description</font></th>
<th bgcolor="#ffd" width=50%><font color=black>Data Entry</font></th></tr>
<tr><td bgcolor="#eeeee">Loan Amount</td><td bgcolor="#aaeeaa" align=right><input
type=text name=loan
size=10></td></tr>
<tr><td bgcolor="#eeeee">Loan Length in Months</td><td bgcolor="#aaeeaa"
align=right><input type=text
name=months size=10></td></tr>
<tr><td bgcolor="#eeeee">Interest Rate</td><td bgcolor="#aaeeaa" align=right><input
type=text name=rate
size=10></td></tr>
<tr><td bgcolor="#eeeee">Monthly Payment</td><td bgcolor="#eeaaaa"
align=right><em>Calculated</em> <input
type=text name=pay size=10></td></tr>
<tr><td  bgcolor="#aaeeaa"align=center><input type=button onClick='showpay()'
value=Calculate></td><td bgcolor="#eeeeaa" align=center><input type=reset
value=Reset></td></tr>
</table>
</form>
<font size=1>Enter only numeric values (no commas), using decimal points
where needed.<br>
Non-numeric values will cause errors.</font>
</center>


</body>
</html>