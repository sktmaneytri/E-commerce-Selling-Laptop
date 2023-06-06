package com.maneyshop.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.maneyshop.model.LineItem;
import com.maneyshop.util.HibernateUtil;
public class LineItemDAO {
	//save lineItem
	public void saveLineItem(LineItem lineitem) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the product object
            session.save(lineitem);
            System.out.println("LineItem is saved");
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

}
