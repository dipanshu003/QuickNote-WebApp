package com.dao;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class NoteDao {
	private SessionFactory factory;
	
	public NoteDao(SessionFactory factory) {
		this.factory = factory;
	}
	
	public int saveNote(String title1,String content1) {
		
		int count = -1;
		
		System.out.println("Saving Note in Process...");
		
		//setting parameter in object
		Note note = new Note();
		note.setAddedDate(new Date());
		note.setTitle(title1.trim());
		note.setContent(content1.trim());
		
		factory=FactoryProvider.getFactory();
		Session session=factory.openSession();
		Transaction tr=session.beginTransaction();
		
		session.save(note);
		
		tr.commit();
		
		
		session.close();
		
		count ++;
		
		System.out.println("Note Saved...");
		
		return count;
		
	}
}
