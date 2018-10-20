<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding a home</title>
</head>
<body>

<form action="addHouse.do" method="GET">
		MLS: <input type="text" name="mls" value="Enter MLS number" />
		Address: <input type="text" name="address" value="Enter MLS number" />
		City: <input type="text" name="city" value="Enter MLS number" />
		Zip Code: <input type="text" name="zipCode" value="Enter MLS number" />
		List Agent: <input type="text" name="MLS" value="Enter MLS number" />
		Buyers Agent: <input type="text" name="MLS" value="Enter MLS number" />
		Closed Date: <input type="text" name="MLS" value="Enter MLS number" />
		Closed Price: <input type="text" name="MLS" value="Enter MLS number" />
		House mls: <input type="text" name="MLS" value="Enter MLS number" />
		<input type="submit" value="Search" />
</form>

	<form action="home.do">
		<input type="submit" value="Home">
	</form>
</body>
</html>