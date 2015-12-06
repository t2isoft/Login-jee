<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<h1>Vous avez saisi:</h1>
    <p> Id: ${greeting.id} </p>
    <p> Message: ${greeting.content} </p>
    <a href="dummyForm">Retourner au formulaire</a>
    <a href=".">Retourner &agrave; la page d'acceuil</a>
</body>
</html>