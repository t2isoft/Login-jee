<!-- 
/**
 * @author LearnBySourceCode
 * Copyright © 2015 LearnBySourceCode.blogspot.com, All Rights Reserved.
 * 
 */
 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="learnBySourceCode.DTO.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Reader reader = (Reader) request.getAttribute("reader");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css/registerStyle.css">
<script src="./resources/js/registration-form-validation.js"></script>
<script type="text/javascript">
	function validate_exist_email() {
		var errorMsg = '${errMsg}';
		var uemail = document.getElementById("exist_email");
		uemail.innerHTML = '<b><span style="color: red; font-family: Courier New, Courier, monospace; font-size: small;">'
				+ errorMsg + ' </span></b>';
	}
</script>
</head>
<body onload="validate_exist_email();">
	<div class="register">
		<fieldset>
			<legend>
				<h1>Edit Profile</h1>
			</legend>
			<form action="EditProfileServlet" method="post" name="registration"
				onSubmit="return formValidation();">

				<div>
					<label for="username"><b>Username <span
							style="color: white; font-family: Courier New, Courier, monospace; font-size: large;">*</span></b></label>
					<div>
						<input type="text" name="username" maxlength="50"
							value="<%=reader.getUser_name()%>" required="required"></input>
					</div>
					<div id="err_username"></div>
				</div>

				<div>
					<label for="password"><b>Password <span
							style="color: white; font-family: Courier New, Courier, monospace; font-size: large;">*</span></b></label>
					<div>
						<input type="password" name="password" maxlength="50"
							value="<%=reader.getPassword()%>" required="required"></input>
					</div>
					<div id="err_password"></div>
				</div>

				<div>
					<label for="confirm_password"><b>Retype Password <span
							style="color: white; font-family: Courier New, Courier, monospace; font-size: large;">*</span></b></label>
					<div>
						<input type="password" name="confirm_password" maxlength="50"
							value="<%=reader.getPassword()%>" required="required"></input>

					</div>
					<div id="err_cpassword"></div>
				</div>

				<div>
					<label for="email"><b>E-mail <span
							style="color: white; font-family: Courier New, Courier, monospace; font-size: large;">*</span></b></label>
					<div>
						<input type="text" name="email" maxlength="50"
							value="<%=reader.getEmail()%>" required="required"></input>
					</div>
					<div id="err_email"></div>
					<div id="exist_email"></div>
				</div>


				<div>
					<label for="website_url"><b>Website URL </b></label>
					<div>
						<input type="text" name="website_url" maxlength="70"
							value="<%=reader.getWebsite_url()%>"></input>
					</div>
					<div id="err_url"></div>
				</div>

				<div>

					<table>
						<tr>
							<td width="55%"><input type="reset" value="Reset"
								class="btn btn-primary btn-block btn-large" /></td>
							<td><input style="width: 190px;" type="submit"
								value="Submit" class="btn btn-primary btn-block btn-large" /></td>
						</tr>
						<tr>
							<td colspan="2"><a href="login.jsp"><span
									style="color: yellow; text-decoration: underline;">Already
										Registered</span></a></td>
							</td>
						</tr>
					</table>

				</div>

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