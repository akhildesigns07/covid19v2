<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bozzer Report</title>
</head>
<body>
	<%
  response.setIntHeader("Refresh", 180); //in your case 60*5=300 (for 5 min)
%>
	<style>
.greendot {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #1eb83f;
	display: inline-block;
	text-align: center;
}

.reddot {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #f52926;
	display: inline-block;
	text-align: center;
}

.violetdot {
	width: 15px;
	height: 15px;
	border-radius: 50%;
	background-color: blueviolet;
	display: inline-block;
	text-align: center;
}

#span {
	display: inline-block;
}
</style>
	<c:forEach items="${lists}" var="namedata" varStatus="looppp">

		<c:if test="${namedata.openPrice%2!=0}">
			<span class="greendot"> ${namedata.openNumber} <c:if
					test="${namedata.isViolet}">
					<span class="violetdot"></span>
				</c:if>
			</span>
		</c:if>
		<%-- <c:out value="${namedata.period}"/> --%>
		<c:if test="${namedata.openPrice%2==0}">
			<span class="reddot">${namedata.openNumber} <c:if
					test="${namedata.isViolet}">
					<span class="violetdot"></span>
				</c:if>
			</span>
		</c:if>


		<c:if test="${looppp.count%20==0}">
			<br>
			<br>

		</c:if>

	</c:forEach>
<br>
	<c:forEach items="${diff}" var="namedatae" varStatus="loopppp">
	${namedatae}
	<c:if test="${loopppp.count%20==0}">
			<br>
			<br>

		</c:if>
	</c:forEach>
	

</body>
<p style="text-align: center; font-size: 14px; padding-top: 24px;">By
	akhildesigns07@gmail.com</p>
</html>