<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
</body>
</html>