package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Order;

public interface OrderDAO {
	
		public boolean saveOrUpdate(Order order);
	
		public boolean update(Order order);
	 
		public boolean delete(Order order);
	  
		public Order get(String id);
   
		public List<Order> list();

}
