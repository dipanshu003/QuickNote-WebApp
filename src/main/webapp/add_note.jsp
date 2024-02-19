<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note Page</title>
<%@include file="include_header.jsp"%>

</head>
<body>

	<!-- navbar -->
	<%@include file="navbar.jsp"%>

	<div class="container-fluid">

		<br>
		<h1
			style="text-align: center; font-variant: small-caps; text-decoration: underline;">Please
			Fill Your Note Details</h1>
		<br>

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" name="title" id="title"
					placeholder="Enter title" required>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>

				<textarea name="content" id="content" class="form-control"
					placeholder="Enter content" style="height: 300px" required></textarea>
			</div>
			<div class="note-btn" style="text-align: center;">
				<button type="submit" class="btn btn-primary pink">Add</button>
			</div>

		</form>

	</div>

</body>
</html>