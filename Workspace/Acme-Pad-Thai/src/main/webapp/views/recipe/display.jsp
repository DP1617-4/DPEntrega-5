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


<h3>${recipe.title}</h3>
<br/>
<p>${recipe.summary}</P>
<p>${recipe.ticker}</P>
<P><spring:message code="recipe.authored"/>${recipe.authored}</P>
<P><spring:message code="recipe.updated"/>${recipe.updated}</p>
<p><spring:message code="recipe.pictures"/></p>
<ul>
	<jstl:forEach var="picture" items="${recipe.pictures}">
		<li>${picture}</li>
	</jstl:forEach>
</ul>
<p>${recipe.hints}</p>
<p>${recipe.score}</p>
<br/>

<p><spring:message	code="recipe.ingredients" />
<jstl:set var="loggedactor" value=<security:authentication property="principal.username" />/>
<jstl:set var="recipeuser" value="${recipe.user}"/> 
<jstl:if test="${recipeuser.userAccount==loggedactor}">
	<form:select path="selectedIngredient" >
    	<form:options items="${ingredientlist}" itemValue="id"  itemLabel="name" />
	</form:select>
	<a href="recipe/addingredients.do?recipeId=${recipe.id}$ingredientId=${selectedIngredient}">
		<spring:message	code="recipe.addingredients" />
	</a>
</jstl:if>
</p>

<display:table pagesize="10" class="displaytag" keepStatus="true"
	name="ingredients" requestURI="${recipe.quantities}" id="row">
	<!-- Attributes -->
	
	<display:column sortable="true">
		<a href="ingredient/display.do?ingredientId=${row.ingredient.id}">${row.ingredient.name}</a>
	</display:column>
	
	<spring:message code="recipe.ingredient.quantity" var="quantityHeader" />
	<display:column property="quantity" title="${quantityHeader}" sortable="false" />
	
	<spring:message code="recipe.ingredient.unit" var="unitHeader" />
	<display:column property="unit" title="${unitHeader}" sortable="false" />
	
	<display:column>
		<a href="recipe/ingredient/remove.do?ingredientId=${row.id}"><spring:message code="recipe.ingredient.remove"/></a>
	</display:column>
	
</display:table>



<p><spring:message	code="recipe.steps" />
<jstl:set var="loggedactor" value=<security:authentication property="principal.username" />/>
<jstl:set var="recipeuser" value="${recipe.user}"/> 
<jstl:if test="${recipeuser.userAccount==loggedactor}">
	<a href="recipe/addsteps.do?recipeId=${recipe.id}">
		<spring:message	code="recipe.addsteps" />
	</a>
</jstl:if>
</p>

<display:table pagesize="10" class="displaytag" keepStatus="true"
	name="ingredients" requestURI="${recipe.steps}" id="row">
	<!-- Attributes -->
	
	<spring:message code="recipe.step.description" var="descriptionHeader" />
	<display:column property="description" title="${descriptionHeader}" sortable="false" />
	
	<spring:message code="recipe.step.hints" var="hintsHeader" />
	<display:column property="hints" title="${hintsHeader}" sortable="true" />
	
	<spring:message code="recipe.step.pictures" var="picturesHeader" />
	<display:column property="pictures" title="${picturesHeader}" sortable="false" />
	
	<display:column>
		<a href="recipe/step/remove.do?stepId=${row.id}"><spring:message code="recipe.step.remove"/></a>
	</display:column>
	
</display:table>