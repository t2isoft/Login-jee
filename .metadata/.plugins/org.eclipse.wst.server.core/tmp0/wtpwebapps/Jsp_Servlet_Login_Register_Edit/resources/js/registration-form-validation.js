/**
 * @author LearnBySourceCode Copyright © 2015 LearnBySourceCode.blogspot.com,
 *         All Rights Reserved.
 * 
 */
function formValidation() {
	var pass = document.registration.password;
	var cpass = document.registration.confirm_password;
	var uname = document.registration.username;
	var uemail = document.registration.email;
	var wurl = document.registration.website_url;

	if (valid_username(uname)) {
		if (valid_password(pass, 7, 12)) {
			if (valid_cpassword(pass, cpass)) {
				if (valid_email(uemail)) {
					return true;
				}
			}
		}
	}
	return false;

}

function clear_all_err_msgs(){
	document.getElementById("err_password").innerHTML ='';
	document.getElementById("err_username").innerHTML ='';
	document.getElementById("err_cpassword").innerHTML ='';
	document.getElementById("err_email").innerHTML ='';
	document.getElementById("exist_email").innerHTML ='';
}

function valid_password(pass, mx, my) {
	var pass_len = pass.value.length;
	if (pass_len == 0 || pass_len >= my || pass_len < mx) {
		clear_all_err_msgs();
		document.getElementById("err_password").innerHTML = '<b><span style="color: red; font-family: Courier New, Courier, monospace; font-size: small;">length: ( '
				+ mx + ' - ' + my + ' ) </span></b>';
		pass.focus();
		return false;
	}
	return true;
}

function valid_username(uname) {
	var letters = /^[0-9a-zA-Z]+$/;
	if (uname.value.match(letters)) {
		return true;
	} else {
		clear_all_err_msgs();
		document.getElementById("err_username").innerHTML = '<b><span style="color: red; font-family: Courier New, Courier, monospace; font-size: small;">alphanumeric (characters , numbers) </span></b>';
		uname.focus();
		return false;
	}
}

function valid_cpassword(pass, cpass) {
	if (pass.value === cpass.value) {
		return true;
	} else {
		clear_all_err_msgs();
		document.getElementById("err_cpassword").innerHTML = '<b><span style="color: red; font-family: Courier New, Courier, monospace; font-size: small;">not matched to password </span></b>';
		cpass.focus();
		return false;
	}
}

function valid_email(uemail) {
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if (uemail.value.match(mailformat)) {
		return true;
	} else {
		clear_all_err_msgs();
		document.getElementById("err_email").innerHTML = '<b><span style="color: red; font-family: Courier New, Courier, monospace; font-size: small;">invalid email address! </span></b>';
		uemail.focus();
		return false;
	}
}
