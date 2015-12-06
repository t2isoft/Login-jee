<%-- 
/**
 * @author LearnBySourceCode
 * Copyright © 2015 LearnBySourceCode.blogspot.com, All Rights Reserved.
 * 
 */
 --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="learnBySourceCode.DTO.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	List<Book> bookList = (ArrayList<Book>) request
			.getAttribute("bookList");
	Reader reader = (Reader) request.getAttribute("reader");
	String username = reader.getUser_name();
	int readerId = reader.getId();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>DataTable</title>

<link rel="stylesheet" type="text/css"
	href="./resources/css/datatableStyle.css">

</head>
<body>

	<div style="text-align: center;">
		<b><span id="header"> Welcome, <%
			out.print(" \" " + username + " \" ");
		%>
	</div>
	<br />
	<div style="text-align: right;">
		<form method="link" action="EditProfileServlet">
			<input type="submit" value="Edit"
				class="btn btn-primary btn-block btn-large" />
		</form>
		</b>
	</div>


	<table id="bookTable">
		<thead>
			<tr>
				<th><u>ISBN_10</u></th>
				<th><u>Name</u></th>
				<th><u>Authors</u></th>
				<th><u>Pages Count</u></th>
				<th><u>Price</u></th>
				<th><u>Link</u></th>
			</tr>
		</thead>
		<tbody>
			<%
				for (Book b : bookList) {
			%>
			<tr>
				<td><%=b.getISBN_10()%></td>
				<td><%=b.getName()%></td>
				<td><%=b.getAuthorsNames()%></td>
				<td><%=b.getPages_count()%></td>
				<td><%=b.getPrice()%></td>
				<td><a href="<%=b.getLink()%>">Read More & Download</a></td>

			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<br />
	<div style="text-align: center;">
		<a href="http://www.learnbysourcecode.blogspot.com/" target="_blank"><span
			style=":not color: white; font-family: monospace; font-size: x-small;">Copyright
				© 2015 LearnBySourceCode.blogspot.com, All Rights Reserved.</span></a>
	</div>
</body>

</html>
