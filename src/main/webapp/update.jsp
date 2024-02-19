<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>

<%@include file="include_header.jsp"%>


</head>
<body>

	<!-- navbar -->
	<%@include file="navbar.jsp"%>

	<br>
	<h1
		style="text-align: center; font-variant: small-caps; text-decoration: underline;">Update
		Your Details</h1>
	<br>

	<%
	int note_id = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, note_id);

	s.close();
	%>



	<form action="UpdateServlet?note_id=<%=note.getId()%>" method="post">
		<div class="form-group">
			<label for="title1">Note Title</label> <input type="text"
				class="form-control" name="title" value="<%=note.getTitle()%>"
				required>
		</div>
		<div class="form-group">
			<label for="content1">Note Content</label>

			<textarea name="content" class="form-control" style="height: 300px"
				required><%=note.getContent()%></textarea>
		</div>
		<div class="note-btn" style="text-align: center;">
			<button type="submit" class="btn btn-success">Save</button>
		</div>
	</form>
</body>
</html>