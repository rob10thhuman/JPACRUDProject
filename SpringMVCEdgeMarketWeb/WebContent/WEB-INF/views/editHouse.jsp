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

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/siteStyles.css">
<link rel="icon" href="https://www.freeiconspng.com/uploads/black-yellow-house-clip-art-picture-2.png">

<title>Edit House</title>
</head>
<body>
		<form action="updateHouse.do" method="GET">
		ID #: <input type="text" name="id" value= ${house.id } /><BR>
 		MLS #: <input type="text" name="mls" value= ${house.mls } /><BR>
		Address: <input type="text" name="address" value= ${house.address } /><BR>
		City: <input type="text" name="city" value= ${house.city } /><BR>
		Zip Code: <input type="text" name="zipCode" value= ${house.zipCode } /><BR>
		List Agent: <input type="text" name="listAgent" value= ${house.listAgent } /><BR>
		Buyers Agent: <input type="text" name="buyersAgent" value= ${house.buyersAgent } /><BR>
		Closed Date: <input type="text" name="closedDate" value= ${house.closedDate } /><BR>
		Closed Price: <input type="text" name="closedPrice" value= ${house.closedPrice } /><BR>
		<input type="submit" value="UPDATE HOUSE" />
		</form>
	
	<form action="home.do">
		<input type="submit" value="Home">
	</form>
	
	<form name="mainform" method="post"></form>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>