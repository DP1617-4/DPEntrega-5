<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>


<display:table pagesize="10" class="displaytag" keepStatus="true"
	name="endorsers" requestURI="${requestURI}" id="row">
	
	<!-- Action links -->

	<display:column>
			<a href="endorser/edit.do?endorserId=${row.id}">
				<spring:message	code="endorser.edit" />
			</a>
	</display:column>
	
	<!-- Attributes -->
	
	<spring:message code="endorser.name" var="nameHeader" />
	<display:column property="name" title="${nameHeader}" sortable="true" />

	<spring:message code="endorser.homePage" var="homePageHeader" />
	<display:column property="homePage" title="${homePageHeader}" sortable="true"/>

</display:table>

<!-- Action links -->

<br/>

<input type="button" name="create"
value="<spring:message code="endorser.create" />"
onclick="javascript: relativeRedir('endorser/create.do');" />

<br/>