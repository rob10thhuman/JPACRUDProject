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
<!-- <link href="css/body.css" rel="stylesheet">
 -->
 
<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
 --> 
 
<!-- <link rel="stylesheet" href="/resources/demos/style.css" />
 --> 
<link rel="icon" href="https://www.freeiconspng.com/uploads/black-yellow-house-clip-art-picture-2.png">
 
<title>Stats View</title>

</head>
<body id="page-top">
	<%@ include file="navbar.jsp"%>

	<div>Stats View</div>

	<div>statsView.jsp</div>

	<div class="container">

		<h4>Market Stats</h4>
		
		<table>
			<tr>
				<strong>The Daily  </strong>
			</tr>
			
			<tr>
				<form action="theDaily.do" method="GET">
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="The Daily">
				</form>
			</tr>
			
			<tr>
				<P>
			</tr>
		
		</table>
		
		<table>
			<tr>
				<strong>Where are the sales?  </strong>
			</tr>
			
			<tr>
				<form action="whereAreTheSalesDateRange.do" method="GET">
				<input type="text" class="datepicker" name="startDate" value="Start date" /> 
				<input type="text" class="datepicker" name="endDate" value="End date" /> 
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Range Sales Report">
				</form>
			</tr>
			
			<tr>
				<P>
			</tr>
		
		</table>
		
		<table>
			<tr>
				<strong>Where are the sales?  </strong>
			</tr>
			
			<tr>
				<form action="whereAreTheSalesDateRangeBeds.do" method="GET">
							
				
				<input type="date" name="startDate" value="2018-10-01" data-date="" data-date-format="YYYY MM DD" /> 
				<input type="text" class="datepicker" name="endDate" value="End date" /> 
				
				<select name="propertyType">
  				  <option value="Single Family">Single Family</option>
   				  <option value="Townhouse">Townhouse</option>
    			  <option value="Patio Home">Patio Home</option>
     			  <option value="Condominium">Condominium</option>
 			    </select>
				
				<select name="bedrooms">
  				  <option value="1">1</option>
   				  <option value="2">2</option>
    			  <option value="3">3</option>
     			  <option value="4">4</option>
     			  <option value="5">5</option>
     			  <option value="6">6</option>
     			<!--   <option value="h">Any</option> -->
 			    </select>
				
<!-- 				<input type="text"  name="propertyType" value="Single Family" /> 
 -->			<!-- <input type="number" class="datepicker" name="bedrooms" value="3" />  -->
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Range Sales Report">
				</form>
			</tr>
			
			<tr>
				<P>
			</tr>
		
		</table>
		
		<table>
			<tr>
				<strong>School Report: </strong>
			</tr>

			<tr>	
				<form action="schoolsByDistrict.do" method="GET">
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Schools Report">
				</form>
			</tr>	
						
			<%-- <tr>
				<form action="top10ListAgents.do" method="GET">
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Top 10 LA YTD">
				</form>
			</tr>	 --%>
			<tr>
			<P>
			</tr>

		</table>

		<table>
			<tr>
				<strong>Agent Metrics: </strong>
			</tr>

			<tr>	
				<form action="top10BuyersAgents.do" method="GET">
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Top 10 BA YTD">
				</form>
			</tr>	
						
			<tr>
				<form action="top10ListAgents.do" method="GET">
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Top 10 LA YTD">
				</form>
			</tr>	
			<tr>
			<P>
			</tr>

		</table>

		<table>
			<tr>
				<strong>Quarterly Rpts: </strong>
				
			</tr>
			
			<tr>
				<form action="quarterlyReport.do" method="GET">
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Quarterly Rpt">
				</form>
			</tr>

			<tr>
				<form action="areaQuarterlyReport.do" method="GET">
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Area Quarterly">
				</form>
			</tr>
			
			<tr>
				<form action="whereAreTheLoans.do" method="GET">
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Q4 2018 FinReport">
				</form>
			</tr>
			
			<tr>
				<P>
			</tr>
			
		</table>
		
		<table>	
			<tr>
				<strong>Search Range For Loan Types	 </strong>
				
			</tr>
			
			<tr>
				<td>
				<form action="whereAreTheLoansDateRange.do" method="GET">
				<input type="text" class="datepicker" name="startDate" value="Start date" /> 
				<input type="text" class="datepicker" name="endDate" value="End date" /> 
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Range Fin Report">
				</form>
				</td>
			</tr>
	
	
			<tr>
				<P>
			</tr>
			
		</table>	
		
		<table>
			<tr>
				<P>
			</tr>
			<tr>
				<strong>Breakpoints:  </strong>
			</tr>

			<tr>
				<form action="get300PriceReportYTD.do" method="GET">
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="< 300K YTD">
				</form>
			</tr>	
			
			<tr>
			<P>
			</tr>
			
		</table>
		
		<table>
			<tr>
				<strong>YTD Averages:  </strong>
			</tr>

			<tr>
					<form action="getAVGYTDStats.do" method="GET">
					<input type="submit" class="btn btn-secondary btn-sm mr-3" value="YTD Averages">
				</form>
			</tr>	
			
			<tr>
			<P>
			</tr>
			
		</table>	
		
		<table>
			<tr>
				<strong>Agent Search:  </strong>
			</tr>

			<tr>
				<form action="getAVGYTDStatsByAgent.do" method="GET">
					<input type="text" name="NRDS" value="NRDS # for YTD stats">
					<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Search">
				</form>
			</tr>	
			
			<tr>
				<P>
			</tr>
			
			<tr>
				<form name="agent" action="getAVGYTDStatsByAgent.do" method="GET" >
  					<input name="NRDS" type="text">
 					<button type="submit">Search</button>
				</form>

				<script>
  					var agentYTD = document.forms.agent;
  					agentYTD.elements.NRDS.placeholder = 'NRDS # for YTD stats';
				</script>
				</tr>
			
			<tr>
				<P>
			</tr>
			
		</table>	
		
		<table>
			<tr>
				<strong>Brokerage YTD Production:  </strong>
			</tr>

			<tr>
				<form action="getBrokerageDeals.do" method="GET">
					<input type="text" name="brokerage" value="Enter Brokerage">
					<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Search">
				</form>
			</tr>	
			
			<tr>
				<P>
			</tr>
			
		</table>
		
		<table>
		
			<tr>
				<strong>Brokerage Ranking Listings YTD:  </strong>
			
			</tr>
			
			<tr>
				<td>
				<form action="getBrokerageListRankingYTD.do" method="GET">
				<input type="text" name="startDate" value="Start date" /> 
				<input type="text" name="endDate" value="End date" /> 
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Search">
				</form>
				</td>
			
			</tr>
			
			<tr>
				<P>
			</tr>
		
		</table>
		
		<table>
			<tr>
				<P>
			</tr>
			
			<tr>
				<strong>Brokerage Ranking Sell Side YTD:  </strong>
			
			</tr>
			
			<tr>
				<td>
				<form action="getBrokerageSellRankingYTD.do" method="GET">
				<input type="text" name="startDate" value="Start date" /> 
				<input type="text" name="endDate" value="End date" /> 
				<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Search">
				</form>
				</td>
			</tr>
			
			<tr>
				<P>
			</tr>
			
		</table>	
		
		<table>
			<tr>
				<P>
			</tr>
	
			<tr>
				<strong>List Homes Sold:  </strong>
			</tr>

			<tr>
				<form action="getHomesInDateRangeAsHyperlinks.do" method="GET">
					<input type="text" name="closedDate" value="e.g., 2018-10-01">
					<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Search">
				</form>
			</tr>	
			
			<tr>
				<P>
			</tr>
			
		</table>	
		
		<table>
			<tr>
				<strong>Zip Code YTD:  </strong>
			</tr>

			<tr>
				<form action="getZipYearToDate.do" method="GET">
					<input type="text" name="zipCode" value="enter zip for YTD">
					<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Search">
				</form>
			</tr>	
			
			<tr>
				<P>
			</tr>
			
		</table>	
		
		<table>
			<tr>
				<strong>All Zips YTD:  </strong>
			</tr>

			<tr>
				<form action="getZipReport.do" method="GET">
					<input type="submit" class="btn btn-secondary btn-sm mr-3" value="2018 Zips">
				</form>
			</tr>	
			
			<tr>
				<P>
			</tr>
			
		</table>	


		<table>
			<tr>
				<strong>Hot Sub Area Report:  </strong>
			</tr>

			<tr>
				<td>
				<form action="getHotSubAreasReport.do" method="GET">
					<input type="text" name="startDate" value="Start Date">
					<input type="text" name="endDate" value="End Date">
					<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Search">
				</form>
				</td>
			</tr>	
			
			<tr>
				<P>
			</tr>
			
		</table>	
		
		<table>
			<tr>
				<P>
			</tr>
			
			<tr>
				<strong>Hot Area Report:  </strong>
			</tr>

			<tr>
				<td>
				<form action="getHotAreasReport.do" method="GET">
					<input type="text" name="startDate" value="Start Date">
					<input type="text" name="endDate" value="End Date">
					<input type="submit" class="btn btn-secondary btn-sm mr-3" value="Search">
				</form>
				</td>
			</tr>	
			
			<tr>
				<P>
			</tr>
			
		</table>
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