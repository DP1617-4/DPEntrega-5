<%--
 * list.jsp
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<security:authorize access="hasRole('ADMIN')">
	<div>
		<a href="systemConfiguration/display.do"> 
			<spring:message code="systemConfiguration.list.own" />
		</a>
	</div>
</security:authorize>

<display:table pagesize="5" class="displaytag" keepStatus="true"
	name="systemConfigurations" requestURI="systemConfiguration" id="row">
	<jstl:set var="loggedadmin" value=<security:authentication property="principal.username" /> />
	<jstl:set var="admin" value="${row.user}"/>
	 
	<display:column>
		<jstl:if test="${admin.userAccount==loggedadmin}">
			<a href="systemConfiguration/edit.do?systemConfigurationId=${row.id}">
				<spring:message	code="systemConfiguration.edit" />
			</a>
		</jstl:if>
	</display:column>
	
	<!-- Attributes -->
	<spring:message code="systemConfiguration.keywords" var="keywordsHeader" />
	<display:column property="keywords" title="${keywordsHeader}" sortable="false" />

	<spring:message code="systemConfiguration.fee" var="feeHeader" />
	<display:column property="fee" title="${feeHeader}" sortable="false" />
	
</display:table>

<input type="button" name="edit systemConfiguration"
onclick="javascript: relativeRedir('systemConfiguration/edit.do');" />
<br/>