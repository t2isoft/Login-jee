<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insta2015</title>

<script type="text/javascript">
    function display(message){
  	  var p = document.createElement('p');
  	  p.textContent = message;
  	  document.getElementById('aEcrire').appendChild(p);
    }
    function asynchronousRequest() {
  	  var xhr = new XMLHttpRequest();
  	  xhr.open('get', 'asynchronousMessage');
  	  xhr.onreadystatechange = function() {
  		if (xhr.readyState === 4) {
  	  		if (xhr.status === 200) {
  	  			display("Message reçu à "+new Date().toString()+": information sur l'apprenti "+JSON.parse(xhr.responseText).firstname+" "+JSON.parse(xhr.responseText).lastname);
  	  		}
  	  	} else {
  	  		display('piki');
  	  	}	
  	  }
  	  xhr.send(null);
    }
    var intervalId = 0;
    intervalId = setInterval(asynchronousRequest, 3000);
</script>
</head>
 
<body>
    <div align="center">
        <br/> <br/> Test d'appel asynchrone <br/> <br/>
        <div id="aEcrire"></div>
        <br/>
       
    </div>
</body>
</html>