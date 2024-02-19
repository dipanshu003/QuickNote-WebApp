package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.NoteDao;
import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String note_title=req.getParameter("title");
		String note_content = req.getParameter("content");
		
		int note_id = Integer.parseInt(req.getParameter("note_id").trim());
		
		
		
		Session session=FactoryProvider.getFactory().openSession();
		
		
		Note note=(Note)session.get(Note.class, note_id);
		note.setTitle(note_title);
		note.setContent(note_content);
		
		Transaction tr=session.beginTransaction();
		
		session.save(note);
		
		tr.commit();
		
		session.close();
		
		resp.sendRedirect("all_notes.jsp");
	}
}
