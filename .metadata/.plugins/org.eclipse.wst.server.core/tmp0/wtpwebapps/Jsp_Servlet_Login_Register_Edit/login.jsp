<!-- 
/**
 * @author LearnBySourceCode
 * Copyright © 2015 LearnBySourceCode.blogspot.com, All Rights Reserved.
 * 
 */
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css/loginStyle.css">
</head>
<body>
	<div class="login">
		<fieldset>
			<legend>
				<h1>Login</h1>
			</legend>
			<form method="post" action="LoginServlet">
				<input type="text" name="Email" placeholder="Email"
					required="required" /> <input type="password" name="Password"
					placeholder="Password" required="required" />
				<button type="submit" class="btn btn-primary btn-block btn-large">Sign
					In</button>
				<table>
					<tr>
						<td><a href="registration.jsp"> <span
								style="color: yellow; text-decoration: underline;">
									Register </span>
						</a></td>
					</tr>
					<tr>
						<td>
							<%
								Object errorMsg = request.getAttribute("errMsg");
								if (null != errorMsg) {
									out.println("<span style=\"color: red; font-family: Courier New, Courier, monospace; font-size: small;\">"
											+ errorMsg + "</span></b");
								}
							%>
						</td>
					</tr>
				</table>


			</form>
		</fieldset>
	</div>
	<div style="text-align: center;">
		<a href="http://www.learnbysourcecode.blogspot.com/" target="_blank"><span
			style="color: white; font-family: monospace; font-size: x-small;">Copyright
				© 2015 LearnBySourceCode.blogspot.com, All Rights Reserved.</span></a>
	</div>
</body>
</html>