package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	private static SessionFactory factory;

	public static SessionFactory getFactory() {
		if (factory == null) {
			try {
				Configuration cfg = new Configuration();
				cfg.configure("hibernate.cfg.xml");
				factory = cfg.buildSessionFactory();
				System.out.println("Factory Created...");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return factory;
	}

	public static void closeFactory() {

		if (factory.isOpen()) {
			factory.close();
			System.out.println("Factory Closed...");

		}

	}
}
