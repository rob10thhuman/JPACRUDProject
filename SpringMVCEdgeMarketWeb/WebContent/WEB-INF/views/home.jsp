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

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/siteStyles.css">

<!-- <link href="css/bootstrap.min.css" rel="stylesheet">
 -->
 
 </head>
<body>
	
	<div class="container">
	<h4>Search the database</h4>
	
	<form action="getId.do" method="GET">
		House ID#: <input type="text" name="id" value="Enter Id #" />
		<input type="submit" value="Search" />
	</form>
	
	<form action="getMLS.do" method="GET">
		House MLS#: <input type="text" name="mls" value="Enter MLS #" />
		<input type="submit" value="Search" />
	</form>
	
	</div>
	
	<div class="container"> 
	<h4>Add a house</h4>
	
	<form action="addHouse.do" method="GET">
		MLS #: <input type="text" name="mls" value="Enter MLS number" />
		Address: <input type="text" name="address" value="Enter address" /><BR>
		City: <input type="text" name="city" value="Enter city" />
		Zip Code: <input type="text" name="zipCode" value="Enter zipcode" /><BR>
		List Agent: <input type="text" name="listAgent" value="Enter NRDS" />
		Buyers Agent: <input type="text" name="buyersAgent" value="Enter NRDS" /><BR>
		Closed Date: <input type="text" name="closedDate" value="Enter date closed" />
		Closed Price: <input type="text" name="closedPrice" value="Enter sold price" />
		<input type="submit" value="Add a house" />
	</form>
	
	</div>
	
	<div class="container"> 
	<h4>Delete a house</h4>
	
	<form action="deleteHouse.do" method="GET">
		House ID#: <input type="text" name="id" value="Enter ID#" />
		<input type="submit" value="Delete a house" />
	</form>
	
	</div>
	
	<div class="container"> 
	
	<h4>Edit a house</h4>
	
	<form action="editHouse.do" method="GET">
		House MLS#: <input type="text" name="mls" value="Enter MLS#" />
		<input type="submit" value="Search" />
	</form>
	
	</div>
	
	<div class="container"> 
	
	<h4>Market Stats</h4>
	
	<form action="getAVG.do" method="GET">
		<input type="submit" name="AVG" value="Avg price of homes (all)" />
	</form>
	
	<form action="getAVGYTD.do" method="GET">
		<input type="submit" name="AVG" value="Avg price of homes (YTD)" />
	</form>
	
	<form action="getAVGYTDStats.do" method="GET">
		<input type="submit" name="AVG" value="Avg stats YTD (Avg price, sellers concession)" />
	</form>
	
	<form action="getAVGYTDStatsByAgent.do" method="GET">
		Agent NRDS: <input type="text" name="NRDS" value="Enter NRDS # for YTD sums" />
		<input type="submit" value="Search" />
	</form>
	
	<form action="getBrokerageDeals.do" method="GET">
		Brokerage YTD stats: <input type="text" name="brokerage" value="Enter Brokerage" />
		<input type="submit" value="Search" />
	</form>
	
	<form action="getHomesInDateRangeAsHyperlinks.do" method="GET">
		All Homes Sold in DB: <input type="text" name="closedDate" value="Enter start date" />
		<input type="submit" value="Search" />
	</form>
		
	<form action="getBrokerageListRankingYTD.do" method="GET">
		Brokerage List Rankings: <input type="text" name="startDate" value="Enter start date" />
		<input type="text" name="endDate" value="End date (blank for YTD)" />
		<input type="submit" value="Search" />
	</form>
	
	<form action="getZipYearToDate.do" method="GET">
		Zip Code: <input type="text" name="zipCode" value="Enter zip for YTD stats" />
		<input type="submit" value="Search" />
	</form>
	
	<form action="getHotAreasReport.do" method="GET">
		Hot Sales Area Report: <input type="text" name="startDate" value="Enter start date" />
		<input type="text" name="endDate" value="End date (blank for YTD)" />
		<input type="submit" value="Search" />
	</form>
	
	</div>
	

<form name="mainform" method="post" ></form>


 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>