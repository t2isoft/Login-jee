<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<h1>Veuillez saisir les champs Id(int) et Message(String):</h1>
    
    <form method="post" name="messageStuff" action="dummyForm">
    Id: <input name="id"/>
    <br/>
    Message:
    <input name="content"/>
    <br/>
    <input type="submit" value="Sousmettre"/>
</form>
</body>
</html>