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

<form:form action="recipe/addingredients.do" modelAttribute="recipe">

	<form:hidden path="id" />
	<form:hidden path="version" />
	<form:hidden path="ingredient"/>
	<form:hidden path="recipe"/>
	
	<form:label path="ingredient"><spring:message code="recipe.add.ingredient"/></form:label>
	<form:select path="ingredient">
		<form:options items="${ingredientlist}" itemValue="ingredientId"  itemLabel="name" />
	</form:select>
	<br/>
	
	<form:label path="quantity">
		<spring:message code="recipe.quantity" />:
	</form:label>
	<form:input path="quantity" />
	<form:errors cssClass="error" path="quantity" />
	<br />
	
	<form:label path="unit">
		<spring:message code="recipe.unit" />:
	</form:label>
	<form:input path="unit" />
	<form:errors cssClass="error" path="unit" />
		
	<br/>
	
	<input type="submit" name="moreingredients"
		value="<spring:message code="recipe.ingredient.more" />"
		onclick="javascript: relativeRedir('recipe/addingredients.do?recipeId=${recipe.id}&unit=${unit}&quantity=${quantity}&ingredient=${ingredientId&unit=${unit}&quantity=${quantity}&ingredient=${ingredientId}');"/>&nbsp;
		<br />
	
	<jstl:if test="${recipe.id == 0}">
		<input type="submit" name="continue"
			value="<spring:message code="recipe.continue" />"
			onclick="javascript: relativeRedir('recipe/addsteps.do?recipeId=${recipe.id}');"/>&nbsp;
	</jstl:if>

	<jstl:if test="${recipe.id != 0}">
		<input type="submit" name="save"
		value="<spring:message code="recipe.save" />" 
		onclick="javascript: relativeRedir('recipe/list.do');" />&nbsp; 	
	</jstl:if>
	
	<input type="button" name="cancel"
		value="<spring:message code="recipe.cancel" />"
		onclick="javascript: relativeRedir('recipe/list.do');" />&nbsp;
	<br />

	

</form:form>