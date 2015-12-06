<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insta2015</title>
</head>
 <body>
 	<h1>Liste de tous les apprentis</h1>
	<ul>
		<c:forEach var="a" items="${apprentis}">
			<li>${a.id}- ${a.firstname} - ${a.lastname}</li>
		</c:forEach>
	</ul>

	<h1>Liste d'apprentis avec leurs comp&eacute;tences</h1>
	<ul>
		<c:forEach var="a" items="${apprentisWithCompetences}">
			<li>${a.id} - ${a.firstname} - ${a.lastname}. Competences: <c:forEach
					var="c" items="${a.competences}">${c.name}, </c:forEach> ...
			</li> 
		</c:forEach>
	</ul>
	
	
	<a href="listWithGivenCompetence/Karate"/>Consulter les apprentis avec la comp&eacute;tence Karate</a>
	<br/>
	<a href="asynchronousCall"/>Test d'appel asynchrone (avec json)</a>
	<br/>
	<a href="dummyForm"/>Test d'envoi de formulaire</a>
	<!-- 
	<br/>
	<a href="alphaProject/"/>Projet Alpha</a>
	 -->
		
</body>
</html>