package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.SessionFactory;

import com.dao.NoteDao;
import com.helper.FactoryProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String title = req.getParameter("title").trim();
		String content = req.getParameter("content").trim();

		PrintWriter out = resp.getWriter();

		SessionFactory factory = FactoryProvider.getFactory();
		NoteDao noteDao = new NoteDao(factory);
		int isSave = noteDao.saveNote(title, content);

		if (isSave != -1) {
			resp.setContentType("text/html");
			out.print("<h1 style=\"text-align: center;\">Note is Added Successfully...</h1>");
			out.print("<center><a href=\"all_notes.jsp\">View notes</a></center>");
		}

	}

}
