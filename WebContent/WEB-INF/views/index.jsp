<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Manager</title>
</head>
<body>
<div align="center">
	<h2>Contact Manager</h2>
	<form method="get" action="search">
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Search" />
	</form>
	<h3><a href="new">New Contact</a></h3>
	<table border="1" cellpadding="5">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>E-mail</th>
			<th>Address</th>
			<th>Action</th>
			<th>Phone</th>
		</tr>
		<c:forEach items="${listContact}" var="contact">
		<tr>
			<td>${contact.id}</td>
			<td>${contact.name}</td>
			<td>${contact.email}</td>
			<td>${contact.address}</td>
			<td>${contact.phone}</td>
			<td>
				<a href="edit?id=${contact.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="delete?id=${contact.id}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>	
</body>
</html>