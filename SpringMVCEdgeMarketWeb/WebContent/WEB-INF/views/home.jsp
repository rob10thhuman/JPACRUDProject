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
      
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 -->
<title>Edge Search</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h3>Search the database</h3>
	
	<form action="getId.do" method="GET">
		House ID#: <input type="text" name="id" value="Enter Id number" />
		<input type="submit" value="Search" />
	</form>
	
	<form action="getMLS.do" method="GET">
		House MLS#: <input type="text" name="mls" value="Enter MLS number" />
		<input type="submit" value="Search" />
	</form>
	
	<h3>Add a house</h3>
	
	<form action="addHouse.do" method="GET">
		MLS #: <input type="text" name="mls" value="Enter MLS number" />
		Address: <input type="text" name="address" value="Enter address" />
		City: <input type="text" name="city" value="Enter city" />
		Zip Code: <input type="text" name="zipCode" value="Enter zipcode" />
		List Agent: <input type="text" name="listAgent" value="Enter NRDS" />
		Buyers Agent: <input type="text" name="buyersAgent" value="Enter NRDS" />
		Closed Date: <input type="text" name="closedDate" value="Enter date closed" />
		Closed Price: <input type="text" name="closedPrice" value="Enter sold price" />
		<input type="submit" value="Add a house" />
	</form>
	
	<h3>Delete a house</h3>
	
	<form action="deleteHouse.do" method="GET">
		House ID#: <input type="text" name="id" value="Enter ID number" />
		<input type="submit" value="Delete a house" />
	</form>
	
	<h3>Edit a house</h3>
	
	<form action="editHouse.do" method="GET">
		House MLS#: <input type="text" name="mls" value="Enter MLS number" />
		<input type="submit" value="Search" />
	</form>
	
	<h3>Market Stats</h3>
	<form action="getAVG.do" method="GET">
		<input type="submit" name="AVG" value="Average price of homes (all)" />
	</form>
	
	<form action="getAVGYTD.do" method="GET">
		<input type="submit" name="AVG" value="Average price of homes (YTD)" />
	</form>
	
	<form action="getAVGYTDStats.do" method="GET">
		<input type="submit" name="AVG" value="Average stats YTD (Avg price, sellers concession))" />
	</form>
	
	<%-- <form action="getAVGYTDStatsByAgent.do" method="GET">
		<input type="submit" name="AVG" value="YTD total sales $ by agent" />
	</form> --%>
	
	<form action="getAVGYTDStatsByAgent.do" method="GET">
		Agent NRDS: <input type="text" name="NRDS" value="Enter NRDS number" />
		<input type="submit" value="Search" />
	</form>
	

<form name="mainform" method="post" ></form>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>