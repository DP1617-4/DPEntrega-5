<%--
 * list.jsp
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

<display:table pagesize="5" class="displaytag" keepStatus="true"
	name="cards" requestURI="${requestURI}" id="row">
	<display:column>
		<div style="position: relative; width: 649px; height: 448px; margin-left:auto; margin-right:auto;">
			<img src="images/backgrounds/${row.background.filename}" alt="${row.background.title}"/>
			<div style="position: absolute; top: 10px; left: 10px; right: 10px; bottom: 10px;">
				<h1 style="font-size: 25px; background-color: rgba(240, 240, 230, 0.75);">
					<jstl:out value="${row.title}"></jstl:out>
				</h1>
				<p style="font-size: 18px; background-color: rgba(240, 240, 230, 0.75)">
					<jstl:out value="${row.text}"></jstl:out>
				</p>
			</div>
		</div>
		<br/>
		<div class ="center"><a href="card/customer/edit.do?cardId=${row.id}"> <spring:message code="card.edit" /></a> <a href="card/display.do?cardId=${row.id}"> <spring:message code="card.display" /></a></div>
	</display:column>
</display:table>

<div>
		<a href="card/customer/create.do"> <spring:message
				code="card.create" />
		</a>
	</div>