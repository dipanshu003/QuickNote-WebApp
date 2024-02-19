<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>

<%@include file="include_header.jsp"%>

</head>
<body>

	<!-- navbar -->
	<%@include file="navbar.jsp"%>


	<div class="container-fluid">

		<br>
		<h1
			style="text-align: center; font-variant: small-caps; text-decoration: underline;">All
			Notes</h1>
		<br>


		<%
		Session s = FactoryProvider.getFactory().openSession();

		Query q = s.createQuery("from Note");
		List<Note> note_list = q.list();

		for (Note note : note_list) {
		%>



		<div class="card m-5 text-center">
			<div class="card-header"><%=note.getTitle()%></div>
			<div class="card-body px-5">
				<blockquote class="blockquote mb-0">
					<p style="text-align: left;"><%=note.getContent()%></p>
					<footer class="blockquote-footer" style="text-align: right;">
						<cite title="Added Date"><%=note.getAddedDate()%></cite>
					</footer>
				</blockquote>
				<div class="container text-center mt-3">
					<a href="DeleteServlet?note_id=<%=note.getId()%>" type="button"
						class="btn btn-danger mx-3">Delete</a> <a
						href="update.jsp?note_id=<%=note.getId()%>" type="button"
						id="update-btn" class="btn btn-warning mx-3"> Update </a>

				</div>

			</div>

		</div>





		<%
		}

		s.close();
		%>



	</div>
</body>
</html>