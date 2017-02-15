package com.niit.shoppingcart.daoimpl;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.OrderDAO;
import com.niit.shoppingcart.model.Order;

@Repository("OrderDAO")
public class OrderDAOImpl implements OrderDAO, Serializable {
	
	@Autowired
	  SessionFactory sessionFactory;
		
	   public OrderDAOImpl(SessionFactory sessionFactory)
	   {
		   this.sessionFactory=sessionFactory;
	   }
	   
	   
	   @Transactional
	   public boolean saveOrUpdate(Order order) {
	   	try{
	   			sessionFactory.getCurrentSession().saveOrUpdate(order);
	   		return true;
	   	}
	   	catch(HibernateException e){
	   		e.printStackTrace();
	   	return false;
	   	}
	   }

	   @Transactional
	   public boolean update(Order order) {
	   	try{
	  		sessionFactory.getCurrentSession().update(order);
	   		return true;
	   	}
	   	catch(HibernateException e){
	         e.printStackTrace();		
	   	return false;
	   	}
	   }

	   @Transactional
	   public boolean delete(Order order) {
	   	   
	   	try{
	   			sessionFactory.getCurrentSession().delete(order);
	   			return true;
	   		}	
	   	catch(HibernateException e){
	   		e.printStackTrace();
	   	return false;
	   	}
	   }


	   @Transactional  
	   public Order get(String id) {
	   	return (Order) sessionFactory.getCurrentSession().get(Order.class,id);
	   }

	   
	   @Transactional
	  public List<Order> list() {
	  	String hql="from Order";
	  	Query query=sessionFactory.getCurrentSession().createQuery(hql);
	  	return  ((OrderDAOImpl) query).list();
	  }
}
