<%--
 * edit.jsp
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

<form:form action="ingredient/addproperty.do" modelAttribute="value">

	<form:hidden path="id" />
	<form:hidden path="version" />
	<form:hidden path="ingredient"/>
	<form:hidden path="property"/>

	<form:label path="value">
		<spring:message code="ingredient.value" />:
	</form:label>
	<form:input path="value" />
	<form:errors cssClass="error" path="value" />
	<br />
	
	<input type="submit" name="save"
	value="<spring:message code="recipe.save" />"/>&nbsp; 	

	
	<input type="button" name="cancel"
		value="<spring:message code="recipe.cancel" />"/>&nbsp;
	<br />

	

</form:form>