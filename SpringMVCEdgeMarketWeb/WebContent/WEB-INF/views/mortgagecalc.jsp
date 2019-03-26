<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="https://www.freeiconspng.com/uploads/black-yellow-house-clip-art-picture-2.png">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->

<link
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i"
	rel="stylesheet">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/resume.min.css" rel="stylesheet">


 


<title>Mortgage Calculator - The Agency Colorado Springs</title>

</head>
<body id="page-top">
<%-- 	<%@ include file="navbar.jsp"%>
 --%>	
 	<div><img src ="http://theagencycolorado.com/images/theagencylogo.jpg"></div>
 	<div><%@ include file="providedBy.jsp"%></div>
 	
	<div class=>Mortgage View</div>
	<div>mortgagecalc.jsp</div>
 	<div class="container">
	
	<div class="row">
	
	<div class="col=4">
    <H4>Budget Calculator</H4>
    
    <table>
    
    <tr><td>Monthly Income:</td>		<td><input name="income" type="number" id="income" value="5000"></td></tr>
    <tr><td>Income Tax:</td>		<td><input name="incomeTax" type="number" id="incomeTax" value="450"></td></tr>
    <tr><td>Current Rent:</td>		<td><input name="rent" type="number" id="rent" value="1500"></td></tr>
    <tr><td>Mortgage:</td>		<td><span id="payment2"></span></tr>
    <tr><td>Est Maint:</td>		<td><span id="mx2"></span></tr>
    <tr><td>Food:</td>		<td><input name="food" type="number" id="food" value="1000"></td></tr>
      <tr><td>Car Payment 1:</td>		<td><input name="car1" type="number" id="car1" value="450"></td></tr>
      <tr><td>Car Payment 2:</td>	<td><input name="car2" type="number" id="car2" value="450"></td></tr>
      <tr><td>Electricity:</td>		<td><input name="elec" type="number" id="elect" value="150"></td></tr>
      <tr><td>Gas:</td>	<td><input name="gas" type="number" id="gas" value="100"></td></tr>
      <tr><td>Water:</td>			<td><input name="water" type="number" id="water" value="125"></td></tr>
      <tr><td>Car Insurance:</td>		<td><input name="ins" type="number" id="ins" value="300"></td></tr>
      <tr><td>Cell Phone:</td>		<td><input name="cell" type="number" id="cell" value="200"></td></tr>
      <tr><td>Cable / Internet:</td>		<td><input name="cable" type="number" id="cable" value="200"></td></tr>
      <tr><td>Other Expenses: </td>		<td><input name="other" type="number" id="other" value="0"></td></tr>
      
      </table>
      
      <table>
      
      <tr><td></td><td><H5>Renting</H5></td><td> vs </td><td><H5>Buying</H5></td></tr>
      <tr><td>Total Expenses:</td><td><span id="expenses"></span></td><td> </td><td><span id="buyExpenses"></span></td></tr>
      <tr><td>Total Remaining:</td><td><span id="remaining"></span></td><td> </td><td><span id="buyRemaining"></span></td></tr>
<!--       
      <tr><td><H5>Buying</H5></td></tr>
      <tr><td>Total Expenses:</td><td><span id="buyExpenses"></span></td></tr>
      <tr><td>Total Remaining:</td><td><span id="buyRemaining"></span></td></tr>
     -->
    </table>
    
    <BR><P>
    
    
    
    </div>
    
<%--     	<div><%@ include file="providedBy.jsp"%></div>
 --%>    
    
	<div class="col">
    <H4>Mortgage Calculator</H4>

    <table>
	  <tr>
	  	 <td>Type of loan: </td>
	 	 <td>
	 	 <select name="loanType" id="loanType">
  			<option value="VA First Use">VA First Use</option>
  			<option value="VA Second Use">VA Second Use</option>
  			<option value="VA Disabled Vet">VA Disabled Vet</option>
 			<option value="FHA">FHA</option>
  			<option value="CONV">Conventional</option>
		</select>
	  	</td>
	  </tr>
	  
      <tr><td>Principal:</td>		<td><input name="principal" type="text" id="principal" value="250000"></td></tr>
      <tr><td>Downpayment:</td>		<td><input name="downpayment" type="text" id="downpayment" value="0"></td></tr>
      <tr><td>Interest Rate:</td>	<td><input name="rate" type="text" id="rate" value="4.5"></td></tr>
      <tr><td>Term Length:</td>		<td><input name="term" type="number" id="term" value="30"></td></tr>
      <tr><td>HOA (monthly):</td>	<td><input name="hoa" type="text" id="hoa" value="120"></td></tr>
      <tr><td>Taxes:</td>			<td><input name="taxes" type="number" id="taxes" value="1500"></td></tr>
      <tr><td>Insurance:</td>		<td><input name="insurance" type="text" id="insurance" value="1800"></td></tr>
      
      <tr><td><button onclick="myCalc()" type="submit">Submit</button></td></tr>
      

      <tr></tr>
      <tr><td></td></tr>

      <tr><td>Payment:</td><td><span id="payment"></span></td></tr>
<!--       <tr><td>UFMIP:</td><td><span id="UFMIP"><input name="space2" type=text" id="space2" value="UFMIP"></span></td></tr>
 -->  <tr><td></td><td><span id="UFMIP"></span></td></tr>

	<tr></tr>
	<tr><td>Annual Maint:</td><td><span id="maintenance"></span></td></tr>

    </table>
    
    <BR><P>
    
    
  	<%@ include file="mortDisclaimer.jsp"%>
    </div>
    
     <script>

              function myCalc(){

              var y = document.getElementById("payment");

              var z = document.getElementById("UFMIP");

              var principal = document.getElementById("principal").value;

              var downpayment = document.getElementById("downpayment").value;

              var rate = document.getElementById("rate").value;

              var term = document.getElementById("term").value;

              var taxes = document.getElementById("taxes").value;

              var hoa = document.getElementById("hoa").value;

              var insurance = document.getElementById("insurance").value;

              var loanType = document.getElementById("loanType").value;
              
              var loanMult = 1; 
              
              var m = document.getElementById("maintenance");
              
              var MIP = 0; 
              
			  var UFMIP;   
			  
              
              if (loanType == "VA First Use"){
            	  loanMult = 1.0215; 
              } else if (loanType == "VA Second Use"){
            	  loanMult = 1.033; 
              }	else if (loanType == "FHA" && ((downpayment / principal) <= .1) && term == "15" ) {
            	  loanMult = 1.007;
              } else if (loanType == "FHA" && ((downpayment / principal) > .101) && term == "15" ) {
            	  MIP = .0045;
              } else if (loanType == "FHA" && ((downpayment / principal) <= .05)){
            	  MIP = .0085; 
              } else if (loanType == "FHA" && ((downpayment / principal) > .05 && (downpayment / principal) < 0.099)) {
            	  MIP = .0080; 
              } else if (loanType == "FHA" && ((downpayment / principal) >= .1)) {
            	  MIP = .008; 
              }
              
              
              var newMIP = ((principal - downpayment) * MIP)/12; 
              
              console.log("newMIP is " + newMIP);
             
              
              
              console.log("Type is " + loanType);
              console.log("Term is " + term);
              console.log("HOA is " + hoa);
              console.log("DP ratio is: " + (downpayment/principal)); 
              console.log(loanType + " " + loanMult);
             
              rate = (rate/100/12);
              term = term*12;
              insurance = insurance / 12;
              taxes = taxes / 12;
              hoa = hoa*1;
              UFMIP = (principal-downpayment)*.0175; 
              maintenance = principal*.1; 

              var payment = ((((principal-downpayment)*loanMult) * rate) / (1 - Math.pow(1 + rate, -term)) + newMIP + insurance + taxes + hoa);

              console.log("Payment before rounding: " + payment); 
              
              console.log("HOA after payment calc " + hoa);
              
              payment = Math.round(payment * 100) / 100;

              console.log("Payment after rounding: " + payment); 
              
              console.log(taxes + insurance); 
              
              if (loanType=="FHA"){
            	  z.innerHTML = "$" + Math.round(UFMIP) + "  *UFMIP Not included in estimated payment*"; 
              }
              
              if (loanType!=="FHA"){
            	  z.innerHTML = ""; 
              }

              y.innerHTML = "$" + payment;
 
              var yz = document.getElementById("payment2");
              
              yz.innerHTML = "$" + payment;
              
              m.innerHTML = "$" + principal*.01; 

              
              var income = document.getElementById("income").value;
              income = income *1; 
              
              var incomeTax = document.getElementById("incomeTax").value;
              incomeTax = incomeTax *1; 
              
              var rent = document.getElementById("rent").value;
              rent = rent *1; 
              
              var food = document.getElementById("food").value;
              food = food *1; 
              
              var car1 = document.getElementById("car1").value;
              car1 = car1 *1; 
              
              var car2 = document.getElementById("car2").value;
              car2 = car1 *1; 
              
              var gas = document.getElementById("gas").value;
              gas = gas*1; 
              
              var water = document.getElementById("water").value;
              water = water*1; 
              
              var ins = document.getElementById("ins").value;
              ins = ins*1; 
              
              var cell = document.getElementById("cell").value;
              cell = cell * 1; 
              
              var cable = document.getElementById("cable").value;
              cable = cable * 1; 
              
              var other = document.getElementById("other").value;
              other = other * 1; 
              
              
              
              var expenses = document.getElementById("expenses");
              
              var remaining = document.getElementById("remaining");
              
              var expensesCalc = 0; 
              
              expensesCalc = (incomeTax + rent + food + car1 + car2 + gas + water + ins + cell + cable + other);
              
              console.log(expensesCalc); 
              
              expenses.innerHTML = "$" + expensesCalc; 
              
              var remainingCalc = income - expensesCalc; 
              
              remaining.innerHTML = "$" + remainingCalc; 
              
              var mx2 = document.getElementById("mx2"); 
              
              var mx = Math.round((principal*.01)/12); 
              
              mx2.innerHTML = "$" + mx; 
              
              var buyExpenses = document.getElementById("buyExpenses");
              
              var buyRemaining = document.getElementById("buyRemaining");
              
              var buyExpensesCalc = Math.round(incomeTax + payment + mx + food + car1 + car2 + gas + water + ins + cell + cable + other);
              
              buyExpenses.innerHTML = "$" + buyExpensesCalc; 
              
              var remainingBuyCalc = Math.round(income - buyExpensesCalc); 

              buyRemaining.innerHTML = "$" + remainingBuyCalc; 

              }
              

              </script>
              
              
             <!-- Bootstrap core JavaScript -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Plugin JavaScript -->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for this template -->
		<script src="js/resume.min.js"></script>
    
    
 
  </body>
</html>
