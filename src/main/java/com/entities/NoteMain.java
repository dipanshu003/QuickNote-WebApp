package com.entities;

import org.hibernate.SessionFactory;

import com.helper.FactoryProvider;

public class NoteMain {
	public static void main(String[] args) {
		
		SessionFactory factory=FactoryProvider.getFactory();
		System.out.println(factory);
		FactoryProvider.closeFactory();
		
	}
}
