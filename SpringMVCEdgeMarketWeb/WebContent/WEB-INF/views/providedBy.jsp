<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav>
	
	<!-- <h6>Provided by <A HREF="http://facebook.com/robthompsonrealtor/" target=blank>Rob Thompson, Associate Broker</A></h6>
	<h6>Email <A HREF="mailto:rob@theagencycolorado.com">rob@theagencycolorado.com</A> or call <a href="tel:7194406626">719-440-6626</a> if I can help!	</h6> -->
	<h6>Provided by <span id="agent"></span></h6>
	<h6>Email <span id ="email"></span></h6>

	<script> 
	
	var currentLocation = window.location; 
	console.log("Source URL: ");
	console.log(currentLocation.ancestorOrigins[0]); 
	console.log(currentLocation); 
	
	/* if (currentLocation.ancestorOrigins[0] == "http://paul.theagencycolorado.com") {
		document.getElementById("agent").innerHTML = "Paul Collins, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "paul@theagencycolorado.com or call 719-210-5967"; 
	} */
	
	/* if (currentLocation.ancestorOrigins[0] == "http://laurie.theagencycolorado.com") { 
		document.getElementById("agent").innerHTML = "Laurie Ristig, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "laurie@theagencycolorado.com or call 719-964-0632"; 
	}
	
	if (currentLocation.ancestorOrigins[0] == "http://jesse.theagencycolorado.com") {
		document.getElementById("agent").innerHTML = "Jesse Campbell, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "jesse@theagencycolorado.com or call 801-391-5568"; 
	}
	
	if (currentLocation.ancestorOrigins[0] == "http://mocha.theagencycolorado.com") {
		document.getElementById("agent").innerHTML = "Mocha Miller, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "mocha@theagencycolorado.com or call 719-339-6552"; 
	}
	
	if (currentLocation.ancestorOrigins[0] == "http://rob.theagencycolorado.com") {
		document.getElementById("agent").innerHTML = "Rob Thompson, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "rob@theagencycolorado.com or call 719-440-6626"; 
	}
	
	if (currentLocation.ancestorOrigins[0] == "http://caroline.theagencycolorado.com") {
		document.getElementById("agent").innerHTML = "Caroline Hancock, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "caroline@theagencycolorado.com or call 719-464-6413"; 
	}
	
	if (currentLocation.ancestorOrigins[0] == "http://cheresa.theagencycolorado.com") {
		document.getElementById("agent").innerHTML = "Cheresa Hanes, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "cheresa@theagencycolorado.com or call 623-225-1679"; 
	}
	
	if (currentLocation.ancestorOrigins[0] == "http://james.theagencycolorado.com") {
		document.getElementById("agent").innerHTML = "James Renaud, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "james@theagencycolorado.com or call 719-964-3424"; 
	}

	if (currentLocation.ancestorOrigins[0] == "http://whitney.theagencycolorado.com") {
		document.getElementById("agent").innerHTML = "Whitney Elliott, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "whitney@theagencycolorado.com or call 719-432-6749"; 
	} */
	
	
	var inboundUrl = currentLocation.ancestorOrigins[0]; 
	
	switch (inboundUrl){
	
	case "http://paul.theagencycolorado.com": 
		document.getElementById("agent").innerHTML = "Paul Collins, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "paul@theagencycolorado.com or call 719-210-5967"; 
		break; 
		
	case "http://laurie.theagencycolorado.com": 
		document.getElementById("agent").innerHTML = "Laurie Ristig, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "laurie@theagencycolorado.com or call 719-964-0632"; 
		break; 
		
	case "http://jesse.theagencycolorado.com": 	
		document.getElementById("agent").innerHTML = "Jesse Campbell, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "jesse@theagencycolorado.com or call 801-391-5568"; 
		break; 
	
	case "http://mocha.theagencycolorado.com": 
		document.getElementById("agent").innerHTML = "Mocha Miller, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "mocha@theagencycolorado.com or call 719-339-6552";
		break; 
	
	case "http://rob.theagencycolorado.com": 
		document.getElementById("agent").innerHTML = "Rob Thompson, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "rob@theagencycolorado.com or call 719-440-6626"; 
		break; 
	
	case "http://caroline.theagencycolorado.com": 
		document.getElementById("agent").innerHTML = "Caroline Hancock, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "caroline@theagencycolorado.com or call 719-464-6413"; 
		break; 
	
	case "http://cheresa.theagencycolorado.com": 
		document.getElementById("agent").innerHTML = "Cheresa Hanes, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "cheresa@theagencycolorado.com or call 623-225-1679"; 
		break; 
	
	case "http://james.theagencycolorado.com": 
		document.getElementById("agent").innerHTML = "James Renaud, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "james@theagencycolorado.com or call 719-964-3424"; 
		break; 

	case "http://whitney.theagencycolorado.com": 
		document.getElementById("agent").innerHTML = "Whitney Elliott, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "whitney@theagencycolorado.com or call 719-432-6749"; 
		break; 
		
	default: 
		document.getElementById("agent").innerHTML = "Rob Thompson, Realtor®, The Agency"; 
		document.getElementById("email").innerHTML = "rob@theagencycolorado.com or call 719-440-6626"; 
	}
	
	</script>
	
</nav>