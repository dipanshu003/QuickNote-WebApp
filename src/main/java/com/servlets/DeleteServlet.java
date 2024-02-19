package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String note_id=req.getParameter("note_id");
		
		System.out.println(note_id);
		
		Session session = FactoryProvider.getFactory().openSession();

		Note note=(Note)session.get(Note.class, note_id);
		
		Transaction tr=session.beginTransaction();
		
		session.delete(note);
		
		tr.commit();
		
		session.close();
		resp.sendRedirect("all_notes.jsp");
		
		System.out.println();
		System.out.println("Note Deleted..");
		System.out.println();

	}
}
