<%--
 * edit.jsp
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

<form:form action="card/customer/edit.do" modelAttribute="card">

	<form:hidden path="id" />
	<form:hidden path="version" />
	<form:hidden path="customer"/>

	<form:label path="title">
		<spring:message code="card.title" />:
	</form:label>
	<form:input path="title" />
	<form:errors cssClass="error" path="title" />
	<br />

	<form:label path="text">
		<spring:message code="card.text" />:
	</form:label>
	<form:textarea path="text" />
	<form:errors cssClass="error" path="text" />
	<br />

	<form:label path="background">
		<spring:message code="card.background" />:
	</form:label>
	<form:select id="backgrounds" path="background">
		<form:option value="0" label="----" />		
		<form:options items="${backgrounds}" itemValue="id"
			itemLabel="title" />
	</form:select>
	<form:errors cssClass="error" path="background" />
	<br/>
	
	<input type="submit" name="save"
		value="<spring:message code="card.save" />" />&nbsp; 
	<jstl:if test="${card.id != 0}">
		<input type="submit" name="delete"
			value="<spring:message code="card.delete" />"
			onclick="return confirm('<spring:message code="card.confirm.delete" />')" />&nbsp;
	</jstl:if>
	<input type="button" name="cancel"
		value="<spring:message code="card.cancel" />"
		onclick="javascript: relativeRedir('card/customer/list.do');" />
	<br />


</form:form>