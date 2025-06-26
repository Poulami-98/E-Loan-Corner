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
		  
		  <div class="carousel-inner">
		    <div class="carousel-item active" data-bs-interval="10000">
		      <img src="https://primefinance.co/wp-content/uploads/2013/08/Home-Loan.jpg" class="d-block w-100" alt="slide one">
		    
		      <div class="carousel-caption d-none d-md-block">
			      <h1><font color="white">Welcome to E-Loan Corner</font></h1>
			      <h5>Home Loan</h5>        
		      </div>
		    </div>
		    <div class="carousel-item" data-bs-interval="2000">      
		        <img src="https://cdn.openpr.com/S/3/S325266746_g.jpg"
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
					  <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgWFRUZGBgYGBgYGBUVGBoYGBgYGBgZGhgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQhJCE0MTQ0NDQxNDQ0NDQ0NjQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0PzQ0NDQ/NDQ0NDRANP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIEBQYHAwj/xABFEAACAQICBQUNBwMDBAMAAAABAgADEQQSBQYhMXFBUWGRsQcTIiMyM0JScoGCobMkNGKywcLRFFNzQ5Lwk6Lh8RVjg//EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACMRAAICAgIDAAMBAQAAAAAAAAABAhEDIRIxIjJBBBNRYXH/2gAMAwEAAhEDEQA/ANDEMiJaATlNwiIAIu0DGIAjEtFAwQA5iKAh5YIACERDvCgAk2gEXkiSsADvCIhEw1isoRaKCRZERGARtEGLibSQEmGCILQGAwFohoCLRQgAiLCwERJaACjOREVfkhQASAYu0SRtiW6IAKYTmwihDCwA5ARawyLRLmIANOdp0UwZYmMzXW373U+D6aQQ9bfvdT4PppBPSgvFHBL2ZrhEFoZEBnEdYQMBEBEF4gEwxDtAYAAQMt4QMKABEQCLVYRhQB3iXF4UUFjARaCdCsQYgATEkQ5Bab1swmFYpVc5wAciAs23d0CJJsa2Tg2wKszXF91PwvF4a687vZiL7wAJIYLun4ZtlSnUp9Oxx8tsrixuLRemE52kbjtY8LRF3roDa4UHMxuLjwRK1pDuk0V2UaTv0v4C/qflJoqMZPpF2tCq1EQXZgo52IUfOZJj9fca9wjJSU3t3tbtb2mvt4ASt4vF1KpzVHdzzsxb5HdHRrHBJ96Nf0lrngqVx33O3q0gX/7t0q+kO6OdveKAA9aq23jlX+ZnzMBOLuTKUSnjjH/Sd0jrfjKtwa7KvNTGQdY2/OaDqDrN/U0+81G8dTXed7oNze0NxmOlo50fjXpOtSm2V0N1PTzHnHRLcU1RnJJ6R6JiJGas6bTGUFqLscWV09RwNvuO8SXy88xapmZyAvFFYYiGaSwATyRLdcAMAgAVobQ2MSYAZvraPtdT4PppBBraftdT4PppBPQh6o4JLyZrohmJYwCcR2BFYMsWIGgAkQmgsYawARDEWFvEsIUAcSYQgMVgAwDZA5AF2IAG8k2A95kDpLXHBULhq6uw9Gn4Zv7tkY0m+iwXhETNtId0/eKGHv8Aiqm3A5V/mVjSGumOrXBrZFPo0gEHXv8AnHRpHBJ/4bNi8bSpC9SoiD8bBf1vMQ18x9OvjHqUmzoVUBgCASBY2vvkTVcuczszH1mJY9ZMbVd8qNWafo47bOcEUqE8k7pSA4xuSRcYNi1EBh2iWcCZ9nRdIMkTi9XkESzkzkzWmkYmU8mhRM5s0STAJpRzSnYIYMKCBKZPar6cfCVhUXah8GonrJ/I3ibng8WlVFem2ZWAZWHMf1nnBWl47n+s/wDTv3iofEu3gsf9Nzy+ydl+uZyjY2r2jXGF5xZZ1zc8OwmJJxAvDLARTLObmIBRN5xN4tTFRMaM01t+91Pg+mkEVrb97qfB9NIJ6UPVHnyfkzXSIq0GUQPOI7AXhExN4oQATYiGBF254RNoBYSmEwvADIfWDWXDYNb1Hu5Hg0k2u3u5B0mOrCm3SJYymaya/wBDD3ShatU3Eg+LQ/ib0j0DrlE1k10xGLuoPeqX9tDtYfjbeeG6VpRDR1Y/x73IkNL6axGKbNWqFuZRsRehVGwRgqw7QSWzqUVHoKHBBaBQICBBBaAAtATAzWnIlm3A26BeNKyJSUQ3q804Fooo3qt1GcmR/VbqM0jE5p5QmeIvF96b1W6jC703qt1GWtHO5NibwRXem9Vuowd6b1W6jGKxIhxXem9Vuowd6b1W6jEOxMWrQd6b1W6jD703qt1GJlRdGr9zzWjvqjDVic6jxbH01Hok+sPmJfDPOOHrMjBlJVlIKkbww3Tb9UtYVxtHMbCollqIOfkcD1WmUo/Qa+onIkrFwZZmIRlhRbTmwioDN9bj9rq/B9NIIWtv3up8H00gnox9UcT7NgtCO2ETeKnEdQkiHaAQNYb+Tbt/5sgAYjbHYynRUvVdUUb2Y2Hu5zKfrJ3Q6NDMlACtUFxe/i1PSw8rgJlultL18S+eu5c8g3KvQq7hGkawwyl3pF11j7o7tdMGCi/3mHhkfgU+TxO2Z/VdmYszFmbaWY3JPSTERQEVndDHGPQBDtBaGIiwoIIC454EuSQIYESayxBxHRHxZLnE7WE5PUA3Tk9UmKw+Hd2yorM2/KoudnCUo/0iWT+HMsTNN7nmIZMBXddpR6rgG9iVpIQDbk2TNauEqr5VN14ow/SaX3OcOz6OxCL5TvVRb7BmakgF+baY5LxMHNOSTJ6pp8rQoupQu7U1dM18ufyrAG4ts3yUqaUoq+RqqB7gZS24tuDHcCeYmRVTVwmhRREQVEekzuABcJfP4drtycYeL0HXK4iiuQpXqF++szZkDFSRky+ERl2G4mVGjjil06JXEaYo02ZHqhWW2YG9xm3X2bunki8PpKi7lEqqzAZsoPo8pB3EdIkdX0LUL4ojLatRSmhJ25lQqc2zZtttgbQdRmo3IVUwr0HIO0MyhbqLbRvjonhjrsksJpKlVJWnUV2AvZTyXtcX8oX5RsnGvpF0xNOgAMro7ljfMCt9221oy0LoSpTemzqPFIUVxVd73FjlQqAq2222xxpPAVziadekiOEpuhV3KbWJ23CmKiagpNJ6p9/0fYvGJSsXcJmNlBJJYjfYDaYl9J0giu1VcjmyMDcMTyLbedh2dEY1cFiTVpYjJTzor02pZzlysQQyVMm/ZtGWNW1erCnTUFGIrPVqUw7IpD7lRwMwC8BeOhxhClbJZtLUFVX76uVyVVr7Cw3r0EW3Gd8Ji0rLnpuHAJUkX2MN4I3gyAwmr1ZRRByeLxT1msxPgEbLXFyePXJXQ+jnpPiC1rVKzOmU38EgDbzHYYUKagk+LtmIa3H7dif89T8xidAaYfC1lq0ztGxlO5lPlKf5g1sXLjcSNgtXqeSLDyzuEiVM3ozi/h6L0VpCniKSVaZurj3g8qtzEGO2MxbUfWU4SplcnvNQjOPVbcHHYeibIHBAIIIO0EcoPLeYSjQNUxV9k5lTF3EUZNCKLrFq/iauId6aXVsljmUXsig7zzgwSP1tYjF1Np9DcT/bSCdcVOls5m4fw10iERFAzNe6LrhisNUOHpL3pSoYVz4TODvyci2NxzzFRs2St0WvWHWrDYNfGPmf0aSbXPEeiOkzJ9ZdccTjCVLd7pH/AEkO8fibe3ZKtUxDMxZiSxNyzG5J5yTE5iY6OiCjHb2d7RJYc852bmMWMM/N1w4mzzpdA74IO/dEM4VgLmwiqeEzDY0OKM3nv6czWMSarc8fpo7nBM7po78PXDxM3mb/AKQ9yeeAqeaT6YA9Ain0cGG2HJC5yfwgsPRzMFzKt/SdsqjiZIY/Qj0ioNSk+ZA4ajUDrYkixYcuzdGeIoFGKkbvn0yW0LQBQm3pH9IOVIG5PojkwH4uqaVqdgkTDKVUBmLZmt4TWOy55pWlpjml11eX7OnFu2c+afjoEpJ7H9v+GFkG6wtzAW7J0yxNpy85f0Y3qYKm29f9rMv5SJk+sVetRxNWmtaqFVvBHfH2KQCOXmM2ATMe6RhsuIV+R6Y60OU/K06vxptycWyZJFdXSGIY2Far/wBRv5nZK2JP+vUH/wCj/wAxvgl3mP1nY3RlJ7JLRehsbXRnTEsMrBbNVcXJF9hvDrav6UXc7t7GIJ7Wly1YoZMMn4yz9ZsPkJJmccvyZKTVI2jiTimZXVwWkl8r+o9zufmGjCpjMUhytUrqeYs4Pu2zYryp611CMRh+H7xLh+RydNBLFStFFbSeIGw16o6DUf8AmF/8piP79X/qP/M17E4dGY5kRtp3qDI2voPDNvoJ7hY/KNfkx+oX6WZVUcsSWYkk3JYkkk8pJ3mJBmj1tUcK25GX2XP63jDEal0/QdxxsRNVmxy+0Twkt0UtDNK7nOs27CVW/wALH50yezqmcYilkZl35WK34QI5BBBIIIII2EEbQQeeOSvRa2j0Zl/9QGR+r2Iq1MLRev5xkBawtf1SRyErYnpMfO052qJM21u+91fg+mkOFrd97q/B9NIJ6EH4o4n2bDeRemtA4bFqi4innCEldpUgkbRdTe27Z0R+zxS1Jx3R1FffVPApTcphad1RrMy5m8k8pmV/0q2AsBwAm4Y4+Kf2H/KZjuTdJlOjSEeRWKy2YjmMlMHSDrcjlI6pH40eG3tGSuhR4v4mlSlUSYx8qOWOoAI1hyRnofD5mLci7B0sZLaTW1J+EGiaOWkvO3hH37pHLxNOPloWKcS5VPKYDjHLsFBJ5BeVrEVS5LHlkq2U9E+mVhdSCOcReSQOjsTkceq2xv0MsgWKSoI7IfTOFuucDauw8IrQS+AfbPYJJ4inmRl5wYx0CtkI5nPYI+VxFxqRIBJb9ADxCcW7ZUxLboPzC8W7Zz5H4lSQ+MS0UZH6Zr5KRf1Xpk8M4BmS2QPTKZ3SMIXo03UElHK7Bc2cdHSJcmM5vi+8hqts2RXfLvvZDb52mmKXGaYSVxMYwyWAjukt7AbyQBxJtG6knaTcnaTzk7SeuTOruHz4imvJmzHgu2ehOVJs5u2aHSp5EVB6CqvULQ4pzOZO23Rf52nmXbs70qQJUdbfvGH4fvEtxlR1sP2jD8P3ia4vYUui11N54zk06VN54w8PglrNkZmUEHwkNm2dMlK3QXSG7CJYyUTVNFP3jEHoLpb8l47TVykN71Dxf+JosTJ/ZH6ReG1KwTqrvSzO4zsS77S23cDa22SC6rYEbsLS963PzkylMKoUblAA4AWEQds6OTMKDAtstYDcBzcIl+iESb2MVmkjMz1tH2up8H00hxWtxH9XV+D6aQT0IeqOJ9mrFYBDhgTiOoRiW8W/sN2GZRUSxmq4k+A3snsmY4rfM5muL6U3H+W+w+UZMaEU96HJ4Tb5IWHRBFKdqi1CnYz0r5puEc0VsqjmUD5ThpQeLb3dsdH+JPwv6M9KPamekgSvNJ3TJ8AcZAkzSHRlN7JbU3BrWx2HRhdc5dgRcEIpax6LgSexlPJUdfVdh1MY07mSXxw6KNQ++6D9ZK6eW2JrD8bQy9IMfYwEY6KWwcf/AGN+kfxpgRtf2z2CZJ6Zq+0PAJatB+YXi3bKoJatCeZXi3bMsnQpdD4yF1sP2Ot7KnqYSZJkNrWPsdf2P3CTi9kZjzR2Iz0qb+sin32seydnUMCp3MCp4EWkFqZiM2GA5UYr7t4k7eElUmWujHnplGZDvVmXqJEteo1C7u/qJYHpY/wJEaz4fJiqg5GIcfEL9t5atTaOXDlvXcn3J4I/WdmSXh/0xjHyJ1jGOHrZq9ZfUWmvvOZj2iPryt6sV874p/WqC3AZgOycsY3Fs6G9onyZU9bPP4fh+8S2Eyo61nx+H4H86ysXsEui2VDtPGOtEuBVBJAFjtJAHWYzqHaZzMlOnYVaLktZDuZesRRYc465SWEIAXHEdomyy/4ZvEXYiIKw05ItgJoZnMxLG0XOZEAM21uP2ur8H00gha3fe6vwfTSCejF+KOKS2zWod4RhqJwHUcsV5Dn8DdhmWVmuZqmO81U9h/ymZOp3TPIa4vpxbEoNhdR0EidEcMLqQRziVnHp4b+0ZL6EHih7TRONKzVSt0dtJnxbe7tEdGNNKeabhHFNrgHnAPyi+B9GWmR4C+1IOolpYNKJmTgR2yJxNE8k1g9GU+ye7mB+3caNT5FP5krp83xNY/jMgNQa3e9IUL7A5enf2lJHzUSXx9XPVqNzu5/7jDL0gxdsbxrgt7/5G7BHUZaNa4c/jbsEyrRs+x9LRoXzK8W7ZVhLRoU+JT4u2Yz6FLofSI1o+6V/YPaJKkyL1j+61/8AG36ScfsiK0Vzuf4jziX3gOPcbGXImZvqfXyYlOZrofiGzsmjmXnVSKh0UnXujarTf1kKnipuPkZadGUO90aacyLfidp7Y01hwHf1pC21ayE+ydjSUd9v/N3JHKVwSGlUmxnpXEd7o1H9VGtxIsO2V3UXYlXinYY810xGXD5fXdV9w2nsjTUnyKvFOwyoqsbFfkWcmVLWo+Pw/D94lqJlU1q8/Q4fvEnF7Dl0Wuodp4zmL8gJPMBeHUO08Y60KfHLwbsiSt0NukNe9N6r/wCxv4gGHe48B949BueXMHjDvNVjRk8jOaDZDvaBpzvNCDoXFoh2BhRQEAM01uH2ur8H00gh63H7XV+D6aQT0Y+qOGXbNayw4swiZwHWNtInxT+w/wCUzJlOwcBNY0j5qp/jf8pmSruHASMnw2xdMr2M8tuJkpoXzQ9pv0kXjPLbiZJ6I8372jl6jj7HTSfm34Q9HVM1ND0W6oWkD4tuEZaEreUh9odhkJXEu/IlaqZlI5x85X6hblvcb5YLxticGjm/knnHLHCXF7M8kXLoicCrGomUkEMGzDYVy7bgyx3jbC4VUBttJ3k752BhOXJlY4cVsN3sCeYGMdBtdGPO57BBpatlS3K3ZEaB82fbPYIq8Rt+RKiWbQp8SvFu2VgGWXQ7eJX4u2YyWhvY+JkbrB92r/427I/Jkfp03w9f/G/ZIh7IK0ZlgKuR0b1WU9RE1kOCLjcQD1i8yCmZpuhMRnw9Nvw5TxXZOjMvpGN6H7GIJgJnMtOejUqGvFe7009VWY8WNh8gY61NNkqe0nYZA6x18+Jc8i2QfCP5vJzU8+BU9pOwzpkqgkZJ+RY2aVfWg+PocP3iWUmVjWfz1Dh+4TPH7Fy6LRUO08Y60O4WspYgABrkmw3c8Z1TtPGcXUMLEAjmMlaY2rRdhjqX9xP94i1xSHc6ngwlEGHQbkX/AGiLWmOYdQmvMz/WX0bYkiMdDeZTgfzGPuE0W0QxOyJZ+aGyxLQYinawaJp1MQ7HF06ROW9NjtFkUbdvLa/vgkLrb97qfB9NIJ1xi6WzmbX8NfvFXnMHYIYM5zYbaT80/OUYdakCZY+Dqra6E9K7ZrOJS6MPwmVx8N0ROKkVGTRlmJ0fVzE97feeSOcArImVgVNybHYZoNTCxs+jEYeEoPujcbRalTKPjnujCQaVCjBhvH/CJo1fV+kQfAtwJjF9WaPqfMwjHQpSb6IjD4kOuYdXMeYztnjunq6FbwfBB8q1936xNfRNRfJGcdGztkyjXRSnrY2zQi4AuYmrRqr/AKTnqkTjRiG2d7YDm/mJQbB5EhtpDFZ26BsEk9BHwD7Z7BI7D6OLHw2ZPgv85O4fBrSAVb2O27cpPLHKNRIhK5DgSy6J8yvxdsrSrLNoseKT39s55rR0WOiYw0ub4er/AI37DHhjPSYJpVBbej/lMiK2DejLUEu+qVe9Jk9V7+5h/wCJUFonmPVJ7ViuEdlY2DLy7NonVlVxMMbpltLzk9XKCeYE9W2cWxtMemDwuY2xdXOjoga7KQDkIAvsO0znjB2bOSKG75mLHezE9ZJlq1T2JU9pOwxmmrFXkK+8Sa0ToevTVgFRsxHpEbp0zi2tGMZK9j4vK5rJtq0eH7xLMujcQeVF62nLE6tZ2VnckjdlFhvvM4waZcpJoOq208YkSSGgF9J3PxWHyE6poClyqx9p2MX6w5kVmA3kdc6I6n0hfo2yco6KpruReq8e08Mo3KBwAj4ITmHoo+KTge0x3miF2ACET0yuiew2aJYX3QWvFAwEZrrb97qfB9NIIetv3up8H00hz0YeqOOXbNXobVU9AioIJws6QMdhjM0IUEcQEHC3iThbQ4JTA5NhRORwAgggAX9GOaEcEIIImAhsADOT6KWCCNAczoVTyCcamraNt2g7th5IIIMEcDqz6tQ+8R7h9C1VUKHSwvtKknb74IJHFMu2dDoSod9cj2VAiW1fFjmqVDxbZ1CCCJJWK2cl0Kg9Ee/bO+H0Ql9qL1CCCV8Eh0NGqPRHuAhvhBa0OCIY1GDjjD4e1/dBBGB3FCJqUN0EEQHTvcV3qCCAIMUgIRFoIImMJYTrDgiAJRCOyCCSxozXW0/a6nwfTSCCCehD1R58vZn/2Q==" 
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
					  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpwRtx9Q2m3EvN7TwVqw6n9Q3j7CLevpHs71ukXFQkzYFT82YRrP_I4yZZWrztw_f4FGA&usqp=CAU"
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
					  <img src="https://images.financialexpress.com/2019/10/car-loan1.jpg?w=1200&h=800&imflag=true"
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
					  <img src="https://i1.wp.com/financebuddha.com/blog/wp-content/uploads/2018/04/02165834/Business-Loans-for-startup.jpg?fit=945%2C709&ssl=1"
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