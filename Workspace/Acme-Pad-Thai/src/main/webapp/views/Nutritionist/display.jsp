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
name="nutritionist data" requestURI="${requestURI}" id="row">

	<spring:message code="nutritionist.name" var=nameHeader/>
	<display:column property="name" title="${nameHeader}"/>
	
	<spring:message code="nutritionist.surname" var=surnameHeader/>
	<display:column property="surname" title="${surnameHeader}"/>
	
	<spring:message code="nutritionist.email" var=emailHeader/>
	<display:column property="email" title="${emailHeader}"/>
	
	<spring:message code="nutritionist.phone" var=phoneHeader/>
	<display:column property="phone" title="${phoneHeader}"/>
	
	<spring:message code="nutritionist.postalAddress" var=postalAddressHeader/>
	<display:column property="postalAddress" title="${postalAddressHeader}"/>
	
</display:table>

<br/>

<jstl:if test="${nutritionist.curricula != null}">
	<input type="button" name="view curricula"
	value="<spring:message code="curricula.display" />"
	onclick="javascript: relativeRedir('curricula/display.do');" />
</jstl:if>

<jstl:if test="${nutritionist.curricula == null}">
	<input type="button" name="create curricula"
	value="<spring:message code="curricula.create" />"
	onclick="javascript: relativeRedir('curricula/create.do');" />
</jstl:if>
<br />
	<input type="button" name="edit nutritionist"
	value="<spring:message code="curricula.edit" />"
	onclick="javascript: relativeRedir('nutritionist/edit.do');" />
	
<br />