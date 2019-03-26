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
 --%>	<div class="container">
	<div class=>Rental View</div>
	<div>rentalcost.jsp</div>
    <H4>Rental Calculator</H4>
    <%@ include file="providedBy.jsp"%>
    
    
	<table>
	
	<thead>
	<tr>
		<td>Beds </td>
		<td>Avg Cost</td>
		<td>CPWH</td>
	</tr>
	</thead>
	
	<tr>
		<td>1</td>
		<td><span id="bed1"></span></td>
		<td><span id="pay1"></span></td>
	</tr>
	<tr>
		<td>2</td>
		<td><span id="bed2"></span></td>
		<td><span id="pay2"></span></td>
	</tr>
	<tr>
		<td>3</td>
		<td><span id="bed3"></span></td>
		<td><span id="pay3"></span></td>
	</tr>
	<tr>
		<td>4</td>
		<td><span id="bed4"></span></td>
		<td><span id="pay4"></span></td>
	</tr>
	<tr>
		<td>5</td>
		<td><span id="bed5"></span></td>
		<td><span id="pay5"></span></td>
	</tr>
	
	</table>
	
	<table>
	<tr><BR></tr>
	
	<tr>
	<td>Gross Income:</td>
	<td><input name="salary" type="number" id="salary"></td>
	</tr>
	
	<tr>
	<td>Housing Cost:</td>
	<td><input name="hCost" type="number" id="hCost"></td>
	<td><button onclick="myCalc()" type="submit">Submit</button></td>
	</tr>
	
	<tr>
	<td>Gross %: </td>
	<td><span id="percent"></span></td></td>		
	</tr>
	</table>
	
	<table>
	<tr><BR></tr>
	
	<tr>
	<td>
	* Cost Per Working Hour, assumes 160 hours
	</td>
	</tr>
	
	<tr>
	<td>
	* This is the cost per hour from the wages of the average rental 
	</td> 
	</tr>
	
	<tr>
	<td>
	* Averages obtained from the PPAR MLS 1 Dec 2018, last 30 days leased rate
	</td> 
	</tr>
	
	<tr>
	<td>
	<A HREF="http://thn.io/coloradohome" target=blank>Click here to sign up to receive a list of managed rentals!</A>
	</td> 
	</tr>
	
	<tr>
	<td>
	<A HREF="http://eepurl.com/dgelMD" target=blank>Click here to sign up for Rob's newsletter!</A>
	</td> 
	</tr>
	
	</table>
	
	
	
    <!-- <table>
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
      <tr><td>UFMIP:</td><td><span id="UFMIP"><input name="space2" type=text" id="space2" value="UFMIP"></span></td></tr>
  <tr><td></td><td><span id="UFMIP"></span></td></tr>

	<tr></tr>
	<tr><td>Annual maintenance costs:</td><td><span id="maintenance"></span></td></tr>

    </table> -->
    
    
    	<%@ include file="mortDisclaimer.jsp"%>
    
    <script>
    var bed1avg = 695; 
    var bed2avg = 1201; 
    var bed3avg = 1529; 
    var bed4avg = 1793; 
    var bed5avg = 2125; 
    
    var bed1td = document.getElementById("bed1"); 
    bed1td.innerHTML = "$" + bed1avg;

    var bed2td = document.getElementById("bed2"); 
    bed2td.innerHTML = "$" + bed2avg;
    
    var bed3td = document.getElementById("bed3"); 
    bed3td.innerHTML = "$" + bed3avg;
    
    var bed4td = document.getElementById("bed4"); 
    bed4td.innerHTML = "$" + bed4avg;
    
    var bed5td = document.getElementById("bed5"); 
    bed5td.innerHTML = "$" + bed5avg;
    
    var pay1td = document.getElementById("pay1"); 
    var num1 = roundNumber((bed1avg/160),2); 
    pay1td.innerHTML = "$" + num1;

    var pay2td = document.getElementById("pay2"); 
    var num2 = roundNumber((bed2avg/160),2); 
    pay2td.innerHTML = "$" + num2;
    
    var pay3td = document.getElementById("pay3"); 
    var num3 = roundNumber((bed3avg/160),2); 
    pay3td.innerHTML = "$" + num3;
    
    var pay4td = document.getElementById("pay4"); 
    var num4 = roundNumber((bed4avg/160),2); 
    pay4td.innerHTML = "$" + num4;

    var pay5td = document.getElementById("pay5"); 
    var num5 = roundNumber((bed5avg/160),2); 
    pay5td.innerHTML = "$" + num5;
    
    
    
    
    function roundNumber(num, scale) {
    	  if(!("" + num).includes("e")) {
    	    return +(Math.round(num + "e+" + scale)  + "e-" + scale);
    	  } else {
    	    var arr = ("" + num).split("e");
    	    var sig = ""
    	    if(+arr[1] + scale > 0) {
    	      sig = "+";
    	    }
    	    return +(Math.round(+arr[0] + "e" + sig + (+arr[1] + scale)) + "e-" + scale);
    	  }
    	}
    
    	function myCalc() {
    		var y = document.getElementById("salary").value; 
    		var z = document.getElementById("hCost").value;
    		var x = document.getElementById("percent");
    		
    		console.log("salary: " + y); 
    		console.log("hCost: " + z); 
    		
    		var math = (z / y) * 100; 
    		
    		console.log("math: " + math);
    		
            x.innerHTML = roundNumber(math, 2);

    	}
    
    
    </script>
    
    
    <!--  <script>

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
              
              m.innerHTML = "$" + principal*.01; 

              }

              </script> -->
              
              
             <!-- Bootstrap core JavaScript -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Plugin JavaScript -->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for this template -->
		<script src="js/resume.min.js"></script>
    
    
    </div>
  </body>
</html>
