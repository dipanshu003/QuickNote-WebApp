<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>

<%@include file="include_header.jsp"%>

<style>
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 81%, 68% 100%, 34% 84%, 0 97%, 0 0);
}
</style>


</head>


<body>



	<!-- navbar -->

	<%@include file="navbar.jsp"%>



	<!-- banner -->
	<div class="container-fluid m-0 p-0 banner-background">
		<div class="jumbotron pink text-white">
			<div class="container">
				<h3 class="display-3">Welcome to QuickNote</h3>
				<p>
					<span class="fa fa-child"></span> Hey... Dipanshu here ! QuickNote
					is a straightforward web application designed to help users
					efficiently jot down and organize their notes. With its
					user-friendly interface, QuickNote enables users to create, manage,
					and access their notes seamlessly.
				</p>
				<p>It is essentially the set of technologies that form the
					foundation of a software project.The choice of a tech stack is a
					crucial decision in the development process, as it directly impacts
					the project's scalability, performance, and overall success.</p>


				<a href="add_note.jsp" class="btn btn-outline-light btn-lg"> Add
					Note </a> <a href="all_notes.jsp" class="btn btn-outline-light btn-lg">
					Show Notes </a>

			</div>
		</div>
	</div>

	<marquee>
		<h3>This is the Demo Web-App Create using JSP, Servlet and
			Hibernate.</h3>
	</marquee>


</body>

</html>