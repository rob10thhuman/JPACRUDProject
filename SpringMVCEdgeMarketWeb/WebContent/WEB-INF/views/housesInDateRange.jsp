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
<link rel="icon" href="https://www.freeiconspng.com/uploads/black-yellow-house-clip-art-picture-2.png">

<title>Houses in Date Range</title>

</head>
<body id="page-top">
	<%@ include file="navbar.jsp"%>

<div>Houses In Date Range</div>
	<div>housesInDateRange.jsp</div>
	
	<div class="container">

		<h4>Houses in Date Range</h4>

		<c:choose>

			<c:when test="${not empty housesInDateRange }">

				<table>

						<tr>
							<th>MLS </th>
							<th>Zip Code </th>
							<th>Closed Date </th>
							<th>Closed Price </th>
						</tr>
					<c:forEach items="${housesInDateRange }" var="housesInDateRange">
						<tr>
							<td>${housesInDateRange.mls }</td>
							<td><A HREF="getZipYearToDate.do?zipCode=${housesInDateRange.zipCode }">${housesInDateRange.zipCode }</A></td>
							<td>${housesInDateRange.closedDate }</td>
							<td>${housesInDateRange.closedPrice }</td>
						</tr>
					</c:forEach>
				</table>
			</c:when>


			<c:otherwise>
				<h4>No houses found</h4>
			</c:otherwise>

		</c:choose>

	</div>

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