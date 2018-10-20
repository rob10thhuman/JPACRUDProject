<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Successful Delete!</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty house}">
				<ul>
					<li>Id #: ${house.id }</li>
					<li>MLS #: ${house.mls }</li>
					<li>Address: ${house.address}</li>
					<li>City: ${house.city}</li>
					<li>Zip Code: ${house.zipCode}</li>
					<li>Zoning: ${house.zoning}</li>
					<li>List Agent: ${house.listAgent}</li>
					<li>Buyers Agent: ${house.buyersAgent}</li>
					<li>Closed Date: ${house.closedDate}</li>
					<li>Closed Price: <fmt:formatNumber type="currency" value="${house.closedPrice}"/></li> 
				</ul>
		</c:when>


		<c:otherwise>
			<h4>You successfully deleted a home!</h4>
		</c:otherwise>
	</c:choose>
	
	<form action="home.do">
		<input type="submit" value="Home">
	</form>
</body>
</html>