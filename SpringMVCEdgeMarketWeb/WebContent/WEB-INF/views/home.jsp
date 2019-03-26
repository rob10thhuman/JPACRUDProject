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



<title>Edge Market Analytics - The Agency Colorado Springs</title>

</head>
<body id="page-top">
	<%@ include file="navbar.jsp"%>
	
	
	<div>Home View</div>

	<div>home.jsp</div>
	
	<div class="container">
	
		<h4>Welcome!</h4>
	
		This is a beta version of the analytics program being developed 
		<BR>by Rob Thompson, Associate Broker, <A HREF="http://www.theagencycolorado.com" target=blank>The Agency Colorado, LLC</A>. 
		<BR>Please call Rob @ <a href="tel:719-440-6626">719-440-6626</a> or
		email <a href="mailto:robthompsonrealtor@gmail.com">robthompsonrealtor@gmail.com</a> 
		<BR>if you'd like to know more! You can also visit us @ <A HREF="http://www.thehousingnetwork.com" target=blank">thehousingnetwork.com</A>
		<P><BR>
		<P>The information in this website is not guaranteed. It is for demonstration use only.
		</div>
	</div>

		<%-- <div class="container"> 
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
	
	</div> --%>

		<%-- <div class="container"> 
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
	
	</div> --%>

		<div class="container">

			<!-- <h4>Market Stats</h4> -->

			<%-- <form action="getAVG.do" method="GET">
		<input type="submit" name="AVG" value="Avg price of homes (all)" />
	</form>
	
	<form action="getAVGYTD.do" method="GET">
		<input type="submit" name="AVG" value="Avg price of homes (YTD)" />
	</form> --%>

			<%-- <form action="top10BuyersAgents.do" method="GET">
				<input type="submit" name="TOP10BA" value="Top 10 BA YTD" />
			</form>

			<form action="top10ListAgents.do" method="GET">
				<input type="submit" name="TOP10LA" value="Top 10 LA YTD" />
			</form>

			<form action="quarterlyReport.do" method="GET">
				<input type="submit" name="quarterlyReport"
					value="2018 Quarterly Report" />
			</form>

			<form action="areaQuarterlyReport.do" method="GET">
				<input type="submit" name="areaQuarterlyReport"
					value="2018 Area Quarterly Report" />
			</form>

			<form action="get300PriceReportYTD.do" method="GET">
				<input type="submit" name="get300PriceReportYTD"
					value="2018 YTD 300K Report" />
			</form>

			<form action="getAVGYTDStats.do" method="GET">
				<input type="submit" name="AVG"
					value="Avg stats YTD (Avg price, sellers concession)" />
			</form>

			<form action="getAVGYTDStatsByAgent.do" method="GET">
				<em>Agent NRDS:</em> <input type="text" name="NRDS"
					value="Enter NRDS # for YTD sums" /> <input type="submit"
					value="Search" />
			</form>

			<form action="getBrokerageDeals.do" method="GET">
				<em>2018 Brokerage YTD Stats:</em> <input type="text"
					name="brokerage" value="Enter Brokerage" /> <input type="submit"
					value="Search" />
			</form>

			<form action="getHomesInDateRangeAsHyperlinks.do" method="GET">
				<em>All Homes Sold in DB:</em> <input type="text" name="closedDate"
					value="e.g., 2018-10-01" /> <input type="submit" value="Search" />
			</form>


			<form action="getZipYearToDate.do" method="GET">
				<em>Zip Code YTD Report</em> <input type="text" name="zipCode"
					value="Enter zip for YTD stats" /> <input type="submit"
					value="Search" />
			</form>

			<form action="getZipReport.do" method="GET">
				<input type="submit" name="ZipReport" value="2018 ZipCode Report" />
			</form>

			<form action="getBrokerageListRankingYTD.do" method="GET">
				<em>Brokerage List Rankings:<BR></em> </B> <input type="text"
					name="startDate" value="Start date" /> <input type="text"
					name="endDate" value="End date" /> <input type="submit"
					value="Search" />
			</form>

			<form action="getHotSubAreasReport.do" method="GET">
				<em>Hot Sales Sub Area Report:</em><BR> <input type="text"
					name="startDate" value="Start date" /> <input type="text"
					name="endDate" value="End date" /> <input type="submit"
					value="Search" />
			</form>

			<form action="getHotAreasReport.do" method="GET">
				<em>Hot Sales Area Report:</em><BR> <input type="text"
					name="startDate" value="Start date" /> <input type="text"
					name="endDate" value="End date or blank for YTD" /> <input
					type="submit" value="Search" />
			</form> --%>

		</div>

		<!-- Bootstrap core JavaScript -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Plugin JavaScript -->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for this template -->
		<script src="js/resume.min.js"></script>
</body>
</html>