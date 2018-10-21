<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stats Result</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty stat}">
			<ul>
				<li>Average house price: 
				<fmt:formatNumber type="currency" value="${stat }" /></li>
			</ul>
		</c:when>
		
		
		
		
		<c:when test="${not empty stats}">
			<ul>
				<li>Average house stats:</li>
			</ul>

			<table>
				<c:forEach items="${stats }" var="stats">
					<tr>
						<td>${stats } </td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		
		

		<c:when test="${not empty stats1}">
			<ul>
				<li>Average house stats: ${stats1 } </li>
			</ul>
		</c:when>

		<c:when test="${not empty agentstat}">
			<ul>
				<li>Agent YTD sales: <fmt:formatNumber type="currency"
						value="${agentstat }" /></li>

			</ul>
		</c:when>


		<c:otherwise>
			<h4>No stats found</h4>
		</c:otherwise>
	</c:choose>

	<form action="home.do">
		<input type="submit" value="Home">
	</form>
</body>
</html>