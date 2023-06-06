package com.maneyshop.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.maneyshop.model.Order;
import com.maneyshop.util.HibernateUtil;

public class OrderDAO {
	//save order
	public void saveOrder(Order order) {
	    Transaction transaction = null;
	    Session session = HibernateUtil.getSessionFactory().openSession();
	    
	    try {
	        transaction = session.beginTransaction();
	        session.save(order);
	        System.out.println("Order is saved");
	        transaction.commit();
	    } catch (Exception e) {
	        if (transaction != null) {
	            transaction.rollback();
	        }
	        e.printStackTrace();
	    } finally {
	        session.close();
	    }
	}
}
