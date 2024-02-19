<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Note Taker App</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f0f0f0;
}

.container {
	max-width: 800px;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #333;
}

.button {
	display: block;
	width: 200px;
	margin: 20px auto;
	padding: 10px;
	text-align: center;
	color: #fff;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
}

.button:hover {
	background-color: #0056b3;
}
</style>

<%@include file="include_header.jsp"%>

</head>
<body>

	<!-- navbar -->
	<%@include file="navbar.jsp"%>


	<div class="container-flui p-5">
		<h1>Welcome to My Note Taker App</h1>
		<p style="text-align: center;">This is a simple note-taking app
			that helps you organize your thoughts and tasks.</p>
		<a href="all_notes.jsp" class="button">View Notes</a> <a
			href="add_note.jsp" class="button">Add New Note</a>
	</div>
</body>

</html>