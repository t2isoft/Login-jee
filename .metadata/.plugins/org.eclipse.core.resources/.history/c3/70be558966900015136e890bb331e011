<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha256-Sk3nkD6mLTMOF0EOpNtsIry+s1CsaqQC1rVLTAy+0yc= sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<title>Login Page</title>
<style>
.Login { 
	font-size: 10px;  
	font-family: "Myriad Pro"; 
	color: rgb( 25, 153, 0 );  
	font-weight: bold;  
	text-transform: uppercase;  
	-moz-transform: matrix( 3.31769648701115, 0, 0, 3.34781432246068, 0, 0);  
	-webkit-transform: matrix( 3.31769648701115, 0, 0, 3.34781432246068, 0, 0);  
	text-shadow: 0.004cm 0.007cm 0.01693333333333cm rgb( 255, 255, 255 ); 
	left: 9.00006666666667cm;  
	top: 2.9972cm;
	width: 1.287cm; 
	height: 0.373cm;
	z-index: 28;
	text-align:center;
	margin-left:auto;
	margin-right:auto;
}
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 320px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
	border-radius: 0.071cm;  
	background-color: rgb( 179, 191, 199 );  
	box-shadow: 0.013cm 0.022cm 0.0508cm 0cm rgb( 0, 0, 0 );  
}
</style>
</head>
<body onload='document.loginForm.username.focus();'>

	<h1>Login</h1>
	<div id="login-box">

		<h3 class="Login">Login</h3>
		<hr/>
		<c:if test="${not empty error}">
			<div class="danger">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm'
			action="<c:url value='/j_spring_security_check' />" method='POST'>	
			<table>
				<tr>
					<td>Username:</td>
					<td><input type='text' name='username' placeholder="Ex : John"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input class="btn btn-primary" name="submit" type="submit"
						value="login" /></td>
				</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>
	</div>
</body>
</html>