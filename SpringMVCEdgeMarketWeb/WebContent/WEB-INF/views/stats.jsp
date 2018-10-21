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
		
		
		
		
		<c:when test="${not empty ytdStats }">

			<table>
				<c:forEach items="${ytdStats }" var="ytdStats">
					<tr>
						<td>${ytdStats } </td>
					</tr>
					<tr>
					<td>** Kudos to @Zach for figuring this flow out! ** </td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		
		

		<c:when test="${not empty agentYtdStats }">

			<table>
				<c:forEach items="${agentYtdStats }" var="agentYtdStats">
					<tr>
						<td>${agentYtdStats } </td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		
		<c:when test="${not empty brokerageYtdStats }">

			<table>
				<c:forEach items="${brokerageYtdStats }" var="brokerageYtdStats">
					<tr>
						<td>${brokerageYtdStats } </td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		
		<c:when test="${not empty zipCodeStats }">

			<table>
				<c:forEach items="${zipCodeStats }" var="zipCodeStats">
					<tr>
						<td>${zipCodeStats } </td>
					</tr>
				</c:forEach>
			</table>
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