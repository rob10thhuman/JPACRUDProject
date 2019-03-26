<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="js/chart.bundle.js"></script>
	<script src="js/utils.js"></script>
	<style>
	canvas{
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
	}
	</style>
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
<link href="css/print.css" rel="stylesheet">


<link rel="icon" href="https://www.freeiconspng.com/uploads/black-yellow-house-clip-art-picture-2.png">


<title>Stats Result</title>

</head>
<body id="page-top">
<%-- 	<%@ include file="navbar.jsp"%>
 --%>
<div>Stats</div>
	<div>stats.jsp</div>
		
	<div class="container">
	<div><h4>Search Result</h4></div>
	
		<c:choose>
		
		
			<c:when test="${not empty sDistricts}">
			<div>
			<h3>School Districts By Volume of Sales </h3>
						<h5>Year to date, by volume of sales, mapped at average price point</h5> 
						<%@ include file="providedBy.jsp"%>
			</div>
			
			<div id="canvas-holder" style="width:100%">
				<canvas id="chart-area"> </canvas>
				<small><%@ include file="disclaimer.jsp"%></small>
			</div>
			<div><P><BR></div>
			
			<div>
			<table>
			<tr><td><strong>School Districts:</strong></td></tr>
			<tr><td><a href="https://www.google.com/maps/d/u/0/viewer?hl=en&mid=1J9Cn5kSTfwmCQZP_riWiXMozZHQ&ll=38.86570700342373%2C-104.43402549999996&z=10" target=_blank>School District Map</a></td></tr>
			<tr><td><a href="https://www.schooldigger.com/go/CO/search.aspx" target=blank">School District Address Locator</a></td></tr>
			<tr><td><a href="https://www.facebook.com/groups/coloradospringsschools/" target=blank>CoS Schools FB group</a></td></tr>
			<tr><td><a href="http://www.zillow.com/colorado-springs-co/schools/" target=blank>Zillow School Ratings</a>
			<tr><td><a href="https://bigsandy100j.com/" target=blank>100J-Big Sandy</a></td></tr>         
			<tr><td><a href="http://www.d11.org/Schools/Pages/default.aspx" target=blank">11-Colorado Springs</a></td></tr>      
			<tr><td><a href="http://www.cmsd.k12.co.us/" target=blank>12-Cheyenne Mountain </a></td>  </tr>  
			<tr><td><a href="https://www.mssd14.org/" target=blank>14-Manitou Springs   </a></td>  </tr>  
			<tr><td><a href="http://www.hsd2.org/pages/HSD2" target=blank>2-Harrison</a></td></tr>  
			<tr><td><a href="http://www.asd20.org/Pages/default.aspx" target=blank>20-Academy</a></td> </tr>  
<tr><td>200-Elbert          </td>   </tr>  
			<tr><td><a href="http://www.ellicottschools.org/" target=blank>22-Ellicott</a></td></tr>  
			<tr><td><a href="http://www.peyton.k12.co.us/" target=blank>23Jt-Peyton</a></td></tr>  
<tr><td>28-Hanover           </td>  </tr>  
			<tr><td><a href="http://www.wsd3.org/site/default.aspx?PageID=1" target=blank>3-Widefield</a> </td> </tr>  
<tr><td>300-Agate  </td> </tr>  
			<tr><td><a href="http://lewispalmer.org/" target=blank>38-Lewis-Palmer</a> </td>   </tr>      
			<tr><td><a href="http://d49.org/site/default.aspx?PageID=1" target=blank>49-Falcon</a></td></tr>  
			<tr><td><a href="http://www.edison54jt.schoolfusion.us/" target=blank>54JT-Edison </a></td></tr>  
<tr><td>60-Pueblo       </td>       </tr>  
			<tr><td><a href="http://miamiyoder.com/" target=blank>60Jt-Miami/Yoder</a></td></tr>  
<tr><td>70-Pueblo       </td>       </tr>  
<tr><td>8-Fountain      </td>       </tr>  
<tr><td>C-1-Custer Consolidated</td></tr>  
<tr><td>C-1-Elizabeth   </td>       </tr>  
<tr><td>C-2-Kiowa      </td>        </tr>  
<tr><td>C113-Genoa-Hugo  </td>      </tr>  
<tr><td>R-31 Buena Vista </td>      </tr>  
<tr><td>R-32 Salida    </td>        </tr>  
<tr><td>Re-1-Canon City   </td>     </tr>  
<tr><td>Re-1-Clear Creek  </td>     </tr>  
<tr><td>Re-2 Fremont    </td>       </tr>  
<tr><td>Re-2-Park      </td>        </tr>  
<tr><td>Re-3-Cotopaxi  </td>        </tr>  
<tr><td>Re-4J-Limon     </td>       </tr>  
<tr><td>RE1-Cripple Creek/Victor</td></tr>  
			<tr><td><a href="https://www.dcsdk12.org/">Re1-Douglas</a></td></tr>  
<tr><td>Re2-Woodland Park </td>     </tr>  
			<tr><td><A HREF="https://www.calhanschool.org">Rj1-Calhan</A></td></tr>  
		
			
			
			</table>
			
			
			</div>
			<div>
				<P>				
<!-- 		<button class="btn btn-primary hidden-print" onclick="window.print();"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print</button>
 -->			
				 <h4>SD Report by volume of sales</h4>
					
					<c:forEach items="${sDistricts }" var="sDistricts" varStatus="status">
						<tr>
							<td><P>#   ${status.count} ${sDistricts } </td>
						</tr>
												
					</c:forEach> 
			</div>		
			<script>
				var a = '${sDistricts }'.split(','); 
				console.log(a); 
				
				var one = a[0].split(':'); 
				var oneLabel = "#1 : SD: " + one[1].slice(0,3)+ " #Sales: " + one[2]; 
				console.log(one);
				
				var two = a[1].split(':');
				var twoLabel = "#2 : SD: " + two[1].slice(0,3)+ " #Sales: " + two[2]; 
				console.log(two); 

				var three = a[2].split(':');
				var threeLabel = "#3 : SD: " + three[1].slice(0,3)+ " #Sales: " + three[2]; 
				console.log(three); 
			 	
				var four = a[3].split(':');
				var fourLabel = "#4 : SD: " + four[1].slice(0,3)+ " #Sales: " + four[2]; 
				console.log(four); 
				
				var five = a[4].split(':');
				var fiveLabel = "#5 : SD: " + five[1].slice(0,3)+ " #Sales: " + five[2]; 
				console.log(five); 
				
				var six = a[5].split(':');
				var sixLabel = "#6 : SD: " + six[1].slice(0,3)+ " #Sales: " + six[2]; 
				console.log(six); 
				
				var seven = a[6].split(':');
				var sevenLabel = "#7 : SD: " + seven[1].slice(0,3)+ " #Sales: " + seven[2]; 
				console.log(seven); 
				
				var eight = a[7].split(':');
				var eightLabel = "#8 : SD: " + eight[1].slice(0,3)+ " #Sales: " + eight[2]; 
				console.log(eight); 
				
				var nine = a[8].split(':');
				var nineLabel = "#9 : SD: " + nine[1].slice(0,3)+ " #Sales: " + nine[2]; 
				console.log(nine); 
				
				var ten = a[9].split(':');
				var tenLabel = "#10 : SD: " + ten[1].slice(0,3)+ " #Sales: " + ten[2]; 
				console.log(ten); 
				
				
				var ctx = document.getElementById("chart-area").getContext('2d');
				var myChart = new Chart(ctx, {
				    type: 'horizontalBar',
				    data: {
				        labels: [oneLabel, twoLabel, threeLabel, fourLabel, fiveLabel, sixLabel, sevenLabel, eightLabel, nineLabel, tenLabel],
				        datasets: [{
				            label: 'School District by Volume of Sales and Average Price Point',
				            data: [one[3], two[3], three[3], four[3], five[3], six[3], seven[3], eight[3], nine[3], ten[3]],
				            backgroundColor: [
				                'rgba(255, 99, 132, 0.2)',
				                'rgba(54, 162, 235, 0.2)',
				                'rgba(255, 206, 86, 0.2)',
				                'rgba(75, 192, 192, 0.2)',
				                'rgba(153, 102, 255, 0.2)',
				                'rgba(255, 159, 64, 0.2)',
				                'rgba(255, 99, 132, 0.2)',
				                'rgba(54, 162, 235, 0.2)',
				                'rgba(255, 99, 132, 0.2)',
				                'rgba(54, 162, 235, 0.2)'

				            ],
				            borderColor: [
				                'rgba(255,99,132,1)',
				                'rgba(54, 162, 235, 1)',
				                'rgba(255, 206, 86, 1)',
				                'rgba(75, 192, 192, 1)',
				                'rgba(153, 102, 255, 1)',
				                'rgba(255, 159, 64, 1)',
				                'rgba(255,99,132,1)',
				                'rgba(54, 162, 235, 1)',
				                'rgba(255,99,132,1)',
				                'rgba(54, 162, 235, 1)'

				            ],
				            borderWidth: 1
				        }]
				    },
				    options: {
				        scales: {
				            yAxes: [{
				                ticks: {
				                    beginAtZero:true
				                }
				            }]
				        }
				    }
				});
			 	
			</script>
					
			</c:when>


			<c:when test="${not empty stat}">
				<ul>
					<li>Average house price: ${stat }</li>
				</ul>
			</c:when>




			<c:when test="${not empty ytdStats }">

				 <table>
					<c:forEach items="${ytdStats }" var="ytdStats">
						<tr> The average price and concessions and days on market are -->
							<td>${ytdStats }</td> 
							<%-- <td>${statsCC }</td> --%>
							<%-- <fmt:formatNumber value="${ytdStats }" type="currency" /> --%>
							
 						</tr>
					</c:forEach>
			 	</table>
			 	
			 
			</c:when>
			
<%-- 			<c:when test="${not empty ClosedAndConcessions }">

				 <table>
					<c:forEach items="${ClosedAndConcessions }" var="ClosedAndConcessions">
						<tr> The average price and concessions are -->
							<td>${ClosedAndConcessions.closedAvg }</td> 
							<td>${ClosedAndConcessions.concessionsAvg }</td> 
						</tr>
					</c:forEach>
			 	</table>
			</c:when> --%>
			

			<c:when test="${not empty agentYtdStats }">
			
					<table>
					<h4>Agent Sales and Sum of Concessions YTD</h4><P>
					<h5>Agent NRDS: <%=request.getParameter("NRDS")%></h5>
					
<%-- 				<c:forEach items="${agentYtdStats }" var="agentYtdStats">
 --%>					<tr>
<%-- 							<td>${agentYtdStats }</td>
 --%> 						</tr>
						<tr>
						<td>
						<span id="statsEngine"></span>
						</td>
						</tr>
						
						
						
						<tr>
						<td>
						<span id="statsEngine1"></span>
						</td>
						</tr>
												<tr><td><P></td></tr>
						
						<tr>
						<td>
						<span id="statsEngine2"></span>
						</td>
						</tr>
						
						<tr>
						<td>
						<span id="statsEngine3"></span>
						</td>
						</tr>
						
												<tr><td><P></td></tr>
						
						<tr>
						<td>
						<span id="statsEngine4"></span>
						</td>
						</tr>
						
						<tr>
						<td>
						<span id="statsEngine5"></span>
						</td>
						</tr>
						<tr><td><P></td></tr>

						<tr>
						<td>
						<span id="statsEngine6"></span>
						</td>
						</tr>
						
						<tr>
						<td>
						<span id="statsEngine7"></span>
						</td>
						</tr>
												<tr><td><P></td></tr>
						
						<tr>
						<td>
						<span id="statsEngine8"></span>
						</td>
						</tr>
						
						<tr>
						<td>
						<span id="statsEngine9"></span>
						</td>
						</tr>
						
						<tr><td><P></td></tr>
						<tr>
						<td>
<!-- 						<h5>Difference on concessions total: <span id="statsEngine10"></span></h5>
 -->						<h5>Difference on concessions as list agent (lower is better): <span id="statsEngine11"></span></h5>
						<h5>Difference on concessions as buyers agent (higher is better): <span id="statsEngine12"></span></h5>
						</td>
						</tr>
						
<%-- 				</c:forEach>
 --%>					</table>
					
					
					<script>
					var stats = '${agentYtdStats }'.split(',');
					var sumSalesYTD = stats[0]; 
					sumSalesYTD = sumSalesYTD.replace('[','');
					var sumConcYTD = stats[1]; 
					var avgAgentSalesYTD = stats[2]; 
					var avgAgentConcYTD = stats[3]; 
					var avgAgentListSalesYTD = stats[4]; 
					var avgAgentListConcYTD = stats[5]; 
					var avgAgentBuySalesYTD = stats[6]; 
					var avgAgentBuyConcYTD = stats[7]; 
					var avgMarketSalesYTD = stats[8]; 
					var avgMarketConcYTD = stats[9]; 
					avgMarketConcYTD = avgMarketConcYTD.replace(']','');
					
					var diff = Math.round(Number(avgAgentConcYTD) - Number(avgMarketConcYTD)); 
					var diff2 = Math.round(Number(avgAgentListConcYTD) - Number(avgMarketConcYTD));
					var diff3 = Math.round(Number(avgAgentBuyConcYTD) - Number(avgMarketConcYTD));
					
					
					console.log(stats); 
					console.log(sumSalesYTD);
					console.log(avgMarketConcYTD); 
					console.log(diff); 
					
/* 					document.getElementById("statsEngine").innerHTML = "Agent sum sales YTD: " + Number(sumSalesYTD).toFixed(8).replace(/\.?0+$/,"");
 */					document.getElementById("statsEngine").innerHTML = "Agent sum sales YTD: " + Number(sumSalesYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
					document.getElementById("statsEngine1").innerHTML = "Agent sum concessions YTD: " + Number(sumConcYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');;
					document.getElementById("statsEngine2").innerHTML = "Agent averages sales YTD: " + Number(avgAgentSalesYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');;
					document.getElementById("statsEngine3").innerHTML = "Agent averages concessions YTD: " + Number(avgAgentConcYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');;
					document.getElementById("statsEngine4").innerHTML = "Agent average sale price as list agent YTD: " + Number(avgAgentListSalesYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');;
					document.getElementById("statsEngine5").innerHTML = "Agent average concessions as list YTD: " + Number(avgAgentListConcYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');;
					document.getElementById("statsEngine6").innerHTML = "Agent average sale price as buyers agent YTD: " + Number(avgAgentBuySalesYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');;
					document.getElementById("statsEngine7").innerHTML = "Agent average concessions as buyers agent YTD: " + Number(avgAgentBuyConcYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');;
					document.getElementById("statsEngine8").innerHTML = "Market average sales price YTD: " + Number(avgMarketSalesYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');;
					document.getElementById("statsEngine9").innerHTML = "Market average concessions sum YTD: " + Number(avgMarketConcYTD).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');;
/* 					document.getElementById("statsEngine10").innerHTML = diff;
 */					document.getElementById("statsEngine11").innerHTML = diff2;
					document.getElementById("statsEngine12").innerHTML = diff3;


					
					</script>
			</c:when>

			<c:when test="${not empty brokerageYtdStats }">

				<table>
					<h4>Brokerage production:</h4><P>
					<c:forEach items="${brokerageYtdStats }" var="brokerageYtdStats">
						<tr>
							<td> ${brokerageYtdStats }</td>
						</tr>
					</c:forEach>
				</table>
			</c:when>

			<c:when test="${not empty loans }">

				<table>
					<H4>WHERE ARE THE LOANS?</H4>
					<H5>El Paso County Financing Types // Count of sales: <span id="sumLoans"></span> </H5>
					<H5><span id="temp"><%=request.getParameter("startDate")%> through <span id="thisDate"><%=request.getParameter("endDate")%></span></span> </H5>
					
					<script>
						endDate = "<%=request.getParameter("endDate")%>";
						
						if (endDate == "null") {
  							  document.getElementById("temp").innerHTML = "4th Quarter 2018";
						}
						
						if (endDate == "End date"){
							  document.getElementById("thisDate").innerHTML = "Today";

						}
						
					
						console.log(endDate); 
					</script> 
					
					<c:forEach items="${loans }" var="loans">
						<tr>
							<%-- <td>${loans }</td> --%>
						</tr>
					</c:forEach>
					
					<h6>Report provided by <A HREF="http://facebook.com/robthompsonrealtor/" target=blank>Rob Thompson, Associate Broker</A></h6>
					
	<div id="canvas-holder" style="width:100%">
		<%-- <div>VA: ${VA }</div> --%>
		<canvas id="chart-area">
		
		</canvas>
	</div>
	
	<script>
	
	var z = '${loans }'; 
	console.log("unsplit" + z); 
	
	z = z.replace('[','');
	console.log("edit " + z); 
	
	z = z.replace(']','');
	console.log("edit2 " + z); 
	
	z = '${loans }'.split(','); 
	console.log("split" + z); 
	
	z[0] = z[0].replace('[','');
	
	z[4] = z[4].replace(']','');
	
	z[5] = z[5].replace(']','');
	
	var VA2 = z[0];
	var FHA2 = z[1];
	var CONV2 = z[2];
	var CASH2 = z[3];
	var OTHER2 = z[4];
	var USDA = z[5]; 
	var sumLoans = Number(VA2) + Number(FHA2) + Number(CONV2) + Number(OTHER2) + Number(USDA) + Number(CASH2); 
	console.log("Sum of sales: " + sumLoans); 
	document.getElementById("sumLoans").innerHTML = sumLoans;
	console.log("VA: " + VA2 + " FHA: " + FHA2 + " CONV: " + CONV2 + " CASH: " + CASH2 + " OTHER: " + OTHER2 + " USDA" + USDA ); 
	
/* 	var x = '${loans }'.split(','); 
	console.log(x); 
	var VA = x[0].slice(1,4);
	console.log(VA); 
	var FHA = x[1];
	console.log(FHA); 
	var CONV = x[2];
	console.log(CONV); 
	var CASH = x[3].slice(1,4);
	console.log(CASH); 
	var OTHER = x[4].slice(1,3);
	console.log(OTHER);  */
	
		/* var randomScalingFactor = function() {
			return Math.round(Math.random() * 100);
		}; */

		var config = {
			type: 'pie',
			data: {
				datasets: [{
					data: [
						VA2,
						FHA2,
						CONV2,
						CASH2,
						OTHER2,
						USDA,
					],
					backgroundColor: [
						window.chartColors.red,
						window.chartColors.blue,
						window.chartColors.yellow,
						window.chartColors.green,
						window.chartColors.orange,
						window.chartColors.gray,
					],
					label: 'Dataset 1'
				}],
				labels: [
					'VA',
					'FHA',
					'CONV',
					'CASH',
					'OTHER',
					'USDA'
				]
			},
			options: {
				responsive: true
			}
		};

		window.onload = function() {
			var ctx = document.getElementById('chart-area').getContext('2d');
			window.myPie = new Chart(ctx, config);
		};

		/* document.getElementById('randomizeData').addEventListener('click', function() {
			config.data.datasets.forEach(function(dataset) {
				dataset.data = dataset.data.map(function() {
					return randomScalingFactor();
				});
			}); */

			/* window.myPie.update();
		}); */

		/* var colorNames = Object.keys(window.chartColors);
		document.getElementById('addDataset').addEventListener('click', function() {
			var newDataset = {
				backgroundColor: [],
				data: [],
				label: 'New dataset ' + config.data.datasets.length,
			};

			for (var index = 0; index < config.data.labels.length; ++index) {
				newDataset.data.push(randomScalingFactor());

				var colorName = colorNames[index % colorNames.length];
				var newColor = window.chartColors[colorName];
				newDataset.backgroundColor.push(newColor);
			}

			config.data.datasets.push(newDataset);
			window.myPie.update();
		});

		document.getElementById('removeDataset').addEventListener('click', function() {
			config.data.datasets.splice(0, 1);
			window.myPie.update();
		}); */
	</script>
				</table>
			</c:when>
		
			<c:when test="${not empty zipCodeStats }">

				
			<div>	
				<h3>Top 10 Zip Codes </h3>
						<h5>By volume of sales, mapped at average price point</h5> 
						<%@ include file="providedBy.jsp"%>
			</div>
			
			<div id="canvas-holder" style="width:100%">
				<canvas id="chart-area"> </canvas>
				<small><%@ include file="disclaimer.jsp"%></small>
			</div>
			<div><P></div>
			
			<div>
				<table>
					<c:forEach items="${zipCodeStats }" var="zipCodeStats">
						<tr>
							<td>${zipCodeStats }</td>
						</tr>
					</c:forEach>
				</table>
			
			</div>
				
				<script>
				var a = '${zipCodeStats }'.split(','); 
				console.log(a); 
				
				var one = a[0].split(':'); 
				var oneLabel = "Zip: " + one[1]+ " count: " + one[2]; 
				console.log(one);
				
				var two = a[1].split(':');
				var twoLabel = "Zip: " + two[1]+ " count: " + two[2]; 
				console.log(two); 

				var three = a[2].split(':');
				var threeLabel = "Zip: " + three[1]+ " count: " + three[2]; 
				console.log(three); 
			 	
				var four = a[3].split(':');
				var fourLabel = "Zip: " + four[1] + " count: " + four[2]; 
				console.log(four); 
				
				var five = a[4].split(':');
				var fiveLabel = "Zip: " + five[1] + " count: " + five[2]; 
				console.log(five); 
				
				var six = a[5].split(':');
				var sixLabel = "Zip: " + six[1] + " count: " + six[2]; 
				console.log(six); 
				
				var seven = a[6].split(':');
				var sevenLabel = "Zip: " + seven[1] + " count: " + seven[2]; 
				console.log(seven); 
				
				var eight = a[7].split(':');
				var eightLabel = "Zip: " + eight[1] + " count: " + eight[2]; 
				console.log(eight); 
				
				var nine = a[8].split(':');
				var nineLabel = "Zip]: " + nine[1] + " count: " + nine[2]; 
				console.log(nine); 
				
				var ten = a[9].split(':');
				var tenLabel = "Zip: " + ten[1] + " count: " + ten[2]; 
				console.log(ten); 
				
				
				var ctx = document.getElementById("chart-area").getContext('2d');
				var myChart = new Chart(ctx, {
				    type: 'bar',
				    data: {
				        labels: [oneLabel, twoLabel, threeLabel, fourLabel, fiveLabel, sixLabel, sevenLabel, eightLabel, nineLabel, tenLabel],
				        datasets: [{
				            label: 'Zip Code by Volume of Sales and Average Price Point',
				            data: [one[3], two[3], three[3], four[3], five[3], six[3], seven[3], eight[3], nine[3], ten[3]],
				            backgroundColor: [
				                'rgba(255, 99, 132, 0.2)',
				                'rgba(54, 162, 235, 0.2)',
				                'rgba(255, 206, 86, 0.2)',
				                'rgba(75, 192, 192, 0.2)',
				                'rgba(153, 102, 255, 0.2)',
				                'rgba(255, 159, 64, 0.2)',
				                'rgba(255, 99, 132, 0.2)',
				                'rgba(54, 162, 235, 0.2)',
				                'rgba(255, 99, 132, 0.2)',
				                'rgba(54, 162, 235, 0.2)'

				            ],
				            borderColor: [
				                'rgba(255,99,132,1)',
				                'rgba(54, 162, 235, 1)',
				                'rgba(255, 206, 86, 1)',
				                'rgba(75, 192, 192, 1)',
				                'rgba(153, 102, 255, 1)',
				                'rgba(255, 159, 64, 1)',
				                'rgba(255,99,132,1)',
				                'rgba(54, 162, 235, 1)',
				                'rgba(255,99,132,1)',
				                'rgba(54, 162, 235, 1)'

				            ],
				            borderWidth: 1
				        }]
				    },
				    options: {
				        scales: {
				            yAxes: [{
				                ticks: {
				                    beginAtZero:true
				                }
				            }]
				        }
				    }
				});
			 	
			</script>
			</c:when>

			<c:when test="${not empty topBAs }">

				<table>
						<h4>Top 10 Buyers Agents 2018</h4>
						<h5>Report Provided for Chris Annan</h5>
						<h5>Not for external distribution</h5>						
						<%@ include file="providedBy.jsp"%>
					
					<c:forEach items="${topBAs }" begin="1" end="100" var="topBAs" varStatus="status">
						<tr>
							<td>#   ${status.count} ${topBAs }</td>
						</tr>
					</c:forEach>
				</table>
				
<!-- 	<script>
		var x = '${topBAs }'; 
		console.log(x); 
	</script> -->
		
		
			</c:when>
			
			
			<c:when test="${not empty topLAs }">

				<table>
						<h4>Top 10 List Agents 2018</h4>
					
					<c:forEach items="${topLAs }" begin="1" end="10" var="topLAs" varStatus="status">
						<tr>
							<td>#   ${status.count} ${topLAs }</td>
						</tr>
					</c:forEach>
				</table>
			</c:when>
			
			<c:when test="${not empty qRpt}">
					
					<div style="width:75%;">
					<h4>Quarterly Stats (Last 8))</h4>
		<canvas id="myChart"></canvas>
	</div>

<script>

var x = '${qRpt }'.split('$'); 
console.log(x); 
var Q1 = x[1].slice(0,6);
var Q2 = x[2].slice(0,6);
var Q3 = x[3].slice(0,6);
var Q4 = x[4].slice(0,6);
var Q5 = x[5].slice(0,6);
var Q6 = x[6].slice(0,6);
var Q7 = x[7].slice(0,6);
var Q8 = x[8].slice(0,6);

console.log(Q1);
console.log(Q2);
console.log(Q3);
console.log(Q4);
console.log(Q5);
console.log(Q6);
console.log(Q7);
console.log(Q8);

var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8"],
        datasets: [{
            label: 'Average Home Prices',
            data: [Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>

<div style="width:75%;">
		<canvas id="myChart2"></canvas>
	</div>

<script>

var y = '${qRpt }'.split('AvgDOM: '); 
console.log(x); 
var Q1D = y[1].slice(0,2);
var Q2D = y[2].slice(0,2);
var Q3D = y[3].slice(0,2);
var Q4D = y[4].slice(0,2);
var Q5D = y[5].slice(0,2);
var Q6D = y[6].slice(0,2);
var Q7D = y[7].slice(0,2);
var Q8D = y[8].slice(0,2);

console.log(Q1D);
console.log(Q2D);
console.log(Q3D);
console.log(Q4D);
console.log(Q5D);
console.log(Q6D);
console.log(Q7D);
console.log(Q8D);

var ctx = document.getElementById("myChart2").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8"],
        datasets: [{
            label: 'Days on Market',
            data: [Q1D, Q2D, Q3D, Q4D, Q5D, Q6D, Q7D, Q8D],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>

<div style="width:75%;">
		<canvas id="myChart3"></canvas>
	</div>

<script>

var z = '${qRpt }'.split('#Sales: '); 
console.log(x); 
var Q1S = z[1].slice(0,4);
var Q2S = z[2].slice(0,4);
var Q3S = z[3].slice(0,4);
var Q4S = z[4].slice(0,4);
var Q5S = z[5].slice(0,4);
var Q6S = z[6].slice(0,4);
var Q7S = z[7].slice(0,4);
var Q8S = z[8].slice(0,4);

console.log(Q1S);
console.log(Q2S);
console.log(Q3S);
console.log(Q4S);
console.log(Q5S);
console.log(Q6S);
console.log(Q7S);
console.log(Q8S);

var ctx = document.getElementById("myChart3").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8"],
        datasets: [{
            label: '# House Sold',
            data: [Q1S, Q2S, Q3S, Q4S, Q5S, Q6S, Q7S, Q8S],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>



<table>
						<h4>Quarterly Stats</h4>
					
					<c:forEach items="${qRpt }" var="qRpt" varStatus="qRpts">
						<tr>
							<td>Q${qRpts.count} ${qRpt }</td>
						</tr>
						
					</c:forEach>
					
				</table>
				
			
			</c:when>

			<c:when test="${not empty stats}">
					Quarterly Report:<BR> ${stats }
			</c:when>
			
			<c:when test="${not empty qRptArea}">
			<h4>4th Quarter By Area Stats</h4>
					<c:forEach items="${qRptArea }" var="qRptArea" varStatus="qRpts">
						<tr>
							<td><P>${qRptArea }</td>
						</tr>
					</c:forEach>
					
					
			</c:when>
			
			
			
			<c:when test="${not empty qRpt300}">
					<table>
						<h4>300K Quarterly Report:</h4>
					
					<c:forEach items="${qRpt300 }" var="qRpt300" varStatus="qRpt300s">
						<tr>
							<td>Q${qRpt300s.count} ${qRpt300 }</td>
						</tr>
					</c:forEach>
				</table>
			</c:when>
			
			<c:when test="${not empty theDaily}">
				<div id="theDaily" class="p-3 mb-2 text-dark" style="background-color: lightblue; width:425px;">
					<table>
						<h3>The Daily: running 30 day snapshot</h3>
						<h5>Market Averages Report</h5> 
						<%@ include file="providedBy.jsp"%>
						
						<tr>
<%-- 							<td><h5>${theDaily }</h5></td>
 --%>							<td id="CP"></td>
						</tr>
						<tr>
							<td id="CON"></td>
						</tr>
						<tr>
							<td id="DOM"></td>
						</tr>
						<tr>
							<td id="COUNT"></td>
						</tr>
						<tr>
							<td>
						<small><%@ include file="disclaimer.jsp"%></small>
							</td>
						</tr>
				</table>
				
				</div>
				
				<div>
<!-- 					<button onclick="printDiv('theDaily')">PRINT</button>
 -->				</div>
				
				<script>

					var theDaily = '${theDaily }';
					console.log("Initial variable " + theDaily); 
					
					var theDailyCP = '${theDaily }'.split(': $');
					console.log("the daily" + theDailyCP); 
					theDailyCP = '${theDaily }'.split(',');
					theDailyCP = theDailyCP[0].slice(9); 
					console.log("Final product CP " + theDailyCP); 
					document.getElementById("CP").innerHTML = "Closed price: $" + theDailyCP;
					
					var theDailyConc = '${theDaily }'.split(': $');
					console.log("concessions" + theDailyConc); 
					theDailyConc = '${theDaily }'.split(',');
					theDailyConc = theDailyConc[1].slice(17);
					console.log("concessions" + theDailyConc); 
					document.getElementById("CON").innerHTML = "Seller's concessions: " + theDailyConc;

					
					
					var theDailyAvgDom = '${theDaily }'.split('M: ');
					theDailyAvgDom = theDailyAvgDom[1].split(','); 
 	    			console.log("Final product DOM " + theDailyAvgDom[0]); 
					document.getElementById("DOM").innerHTML = "Days on market: " + theDailyAvgDom[0];

 	    			
 	    			console.log("theDaily ahead of theDailyCount:" + theDaily)
 	    			
 	    			var theDailyCount = theDaily.split('nt: '); 
 	    			theDailyCount[1] = theDailyCount[1].replace(']','');
					theDailyCount=theDailyCount[1]; 
 	    			console.log(theDailyCount); 
					document.getElementById("COUNT").innerHTML = "Homes sold: " + theDailyCount;
					
					function printDiv(divName){
						var printContents = document.getElementById(divName).innerHTML;
						var originalContents = document.body.innerHTML;
						document.body.innerHTML = printContents;
						window.print();
						document.body.innerHTML = originalContents;
					}

				</script>
				
			</c:when>
			
			<c:when test="${not empty sales}">
					<table>
						<h4>Where are the sales?</h4>
						<H5><span id="temp"><%=request.getParameter("startDate")%> through <span id="thisDate"><%=request.getParameter("endDate")%></span></span> </H5>
					
					<script>
						endDate = "<%=request.getParameter("endDate")%>";
						
						if (endDate == "End date"){
							  document.getElementById("thisDate").innerHTML = "Today";

						}
						
					
						console.log(endDate); 
					</script> 
					
						<tr>
							<div id="canvas-holder" style="width:100%">
								<canvas id="chart-area"></canvas>
							</div>
						</tr>
						
						
						<tr>
						</tr>
							<tr id="sfh"><%-- ${sales } --%></tr>
							<tr id="twn"></tr>
							<tr id="patio"></tr>
							<tr id="condo"></tr>
				</table>
				
				<script>
					var sales = '${sales}'; 
					console.log(sales); 
					
					var sales2 = '${sales}'.split(',');
					console.log("Split on ," + sales + " " + sales2);
					
					var singleFamily = sales2[0].replace('[','');
					document.getElementById("sfh").innerHTML = "Single Family: " + singleFamily;
					console.log(singleFamily); 
					
					var townhouses = sales2[1]; 
					document.getElementById("twn").innerHTML = "Townhouses: " + townhouses;
					console.log(townhouses); 
					
					var patioHome = sales2[2]; 
					document.getElementById("patio").innerHTML = "Patio Homes: " + patioHome;
					console.log(patioHome); 
					
					var condos = sales2[3].replace(']','');; 
					document.getElementById("condo").innerHTML = "Condos: " + condos;
					console.log(condos); 
					
					/* var sumSales = Number(sales2[0])+Number(sales2[1])+sales2[2]+sales2[3]; 
					console.log(sumSales); */ 
					
					
					var config = {
							type: 'pie',
							data: {
								datasets: [{
									data: [
										singleFamily,
										townhouses,
										patioHome,
										condos,
										/* OTHER2, */
									],
									backgroundColor: [
										window.chartColors.red,
										window.chartColors.blue,
										window.chartColors.yellow,
										window.chartColors.green,
/* 										window.chartColors.orange, */
									],
									label: 'Dataset 1'
								}],
								labels: [
									'Single Family',
									'Townhouses',
									'Patio Homes',
									'Condos',
/* 									'OTHER'
 */									/* 'Blue' */
								]
							},
							options: {
								responsive: true
							}
						};

						window.onload = function() {
							var ctx = document.getElementById('chart-area').getContext('2d');
							window.myPie = new Chart(ctx, config);
						};
				
				</script>
				
			</c:when>
			
			<c:when test="${not empty salesBeds}">
					<table>
						<H5><span id="temp"><%=request.getParameter("startDate")%> through <span id="thisDate"><%=request.getParameter("endDate")%></span></span> </H5>
						<H5><span id="temp2">Property Type: <%=request.getParameter("propertyType")%> // Bedrooms: <span id="thisDate"><%=request.getParameter("bedrooms")%></span></span> </H5>
					
					<script>
						endDate = "<%=request.getParameter("endDate")%>";
			<%-- 			bedrooms = "<%=request.getParameter("bedrooms")%>"
						propertyType = "<%=request.getParameter("propertyType")%>" --%>
						
						if (endDate == "End date"){
							  document.getElementById("thisDate").innerHTML = "Today";

						}
						
					
						console.log(endDate); 
					</script> 
						<tr>
							<td>${salesBeds }</td>
						</tr>
				</table>
				
				<script>
				
				var salesBeds = '${salesBeds}'.split(','); 
				console.log(salesBeds); 
				
				var count = salesBeds[0].replace('[count: ','');
				console.log(count); 
				
				var average = salesBeds[1].replace(' average: ','');
				console.log(average); 

				var dom = salesBeds[2].replace(' dom: ','');
				var dom2 = dom.replace(']','');
				console.log(dom2); 
				
				</script>
			</c:when>
		
			
			<%-- <c:when test="${not empty qRpt }">

				<table>
						<caption>Quarterly Report 2018</caption>
					
					<c:forEach items="${qRpt }" begin="1" end="10" var="topLAs" varStatus="status">
						<tr>
							<td>#   ${status.count} ${qRpt }</td>
						</tr>
					</c:forEach>
				</table>
			</c:when> --%>

			<c:otherwise>
				<h4>No stats found</h4>
			</c:otherwise>
		</c:choose>

	<small><%@ include file="disclaimer.jsp"%></small>
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