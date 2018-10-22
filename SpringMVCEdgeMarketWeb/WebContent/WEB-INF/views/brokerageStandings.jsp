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
<title>Brokerage Listing Standings</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/siteStyles.css">

<!-- <link href="css/bootstrap.min.css" rel="stylesheet">
 -->

</head>
<body>
	<div class="container">
	
	<form action="home.do">
		<input type="submit" value="Home">
	</form>
	
	</div>
	
	<div class="container">


		<c:choose>

			<c:when test="${not empty brokerageStandings }">

			<h3>Brokerage Listing Standings</h3>

				<table>
				<c:forEach items="${brokerageStandings }" var="brokerageStandings">
					<tr>
						<td>${brokerageStandings } </td>
					</tr>
				</c:forEach>
			</table>
			</c:when>
			
			<c:when test="${not empty areaStandings }">

			<h3>Area Standings</h3>

				<table>
				<c:forEach items="${areaStandings }" var="areaStandings">
					<tr>
						<td>${areaStandings } </td>
					</tr>
				</c:forEach>
			</table>
			</c:when>


			<c:otherwise>
				<h4>No stats found</h4>
			</c:otherwise>

		</c:choose>

	</div>


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