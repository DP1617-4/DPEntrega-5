<%--
 * display.jsp
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<link rel="shortcut icon" href="favicon.ico"/> 
	
	
	
	
	
	<title><spring:message code="card.display.title"></spring:message></title>



</head>

<body>
	<div style="position: relative; width: 649px; height: 448px; margin-left:auto; margin-right:auto;">
		<img src="images/backgrounds/${card.background.filename}" alt="${card.background.filename}"/>
		<div style="position: absolute; top: 10px; left: 10px; right: 10px; bottom: 10px;">
			<h1 style="font-size: 25px; background-color: rgba(240, 240, 230, 0.75);">
				<jstl:out value="${card.title}"></jstl:out>
			</h1>
			<p style="font-size: 18px; background-color: rgba(240, 240, 230, 0.75)">
				<jstl:out value="${card.text}"></jstl:out>
			</p>
		</div>
	</div>

</body>

</html>