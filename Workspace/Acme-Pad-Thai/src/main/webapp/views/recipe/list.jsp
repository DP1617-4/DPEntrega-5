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



<display:table pagesize="10" class="displaytag" keepStatus="true"
	name="recipe" requestURI="${requestURI}" id="row">
	<jstl:set var="loggedactor" value=<security:authentication property="principal.username" />/>
	<jstl:set var="recipeuser" value="${row.user}"/> 
	<display:column>
		<jstl:if test="${recipeuser.userAccount==loggedactor}">
			<a href="recipe/edit.do?recipeId=${row.id}">
				<spring:message	code="recipe.edit" />
			</a>
		</jstl:if>
	</display:column>
	
	<!-- Attributes -->
	
	<spring:message code="recipe.title" var="titleHeader" />
	<display:column property="title" title="${titleHeader}" sortable="true" />
	
	<spring:message code="recipe.summary" var="summaryHeader" />
	<display:column property="summary" title="${summaryHeader}" sortable="false" />
	
	<display:column>
		<a href="recipe/user/list.do?userId=${recipeuser}"><spring:message code="recipe.user.list"/></a>
	</display:column>
	
	<display:column>
		<a href="ingredient/list.do?recipeId=${row.id}"><spring:message code="recipe.ingredient.list"/></a>
	</display:column>
	
	<display:column>
		<a href="step/list.do?recipeId=${row.id}"><spring:message code="recipe.step.list"/></a>
	</display:column>

	<spring:message code="recipe.hints" var="hintsHeader" />
	<display:column property="hints" title="${hintsHeader}" sortable="false" />
	
	<spring:message code="recipe.authored" var="authoredHeader" />
	<display:column property="authored" title="${authoredHeader}" sortable="true" />
	
	<spring:message code="recipe.updated" var="updatedHeader" />
	<display:column property="updated" title="${updatedHeader}" sortable="true" />
	
	<spring:message code="recipe.pictures" var="picturesHeader" />
	<display:column property="pictures" title="${picturesHeader}" sortable="false" />
	
	<spring:message code="recipe.score" var="scoreHeader" />
	<display:column property="score" title="${scoreHeader}" sortable="false" />
	
	<display:column>
		<a href="category/list.do?recipeId=${row.id}"><spring:message code="recipe.category.list"/></a>
	</display:column>
	
</display:table>

<div>
	<a href="folder/create.do"> <spring:message
			code="folder.create" />
	</a>
</div>