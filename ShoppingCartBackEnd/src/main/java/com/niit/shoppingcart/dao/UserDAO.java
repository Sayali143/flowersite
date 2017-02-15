package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.User;


public interface UserDAO {

		public List<User> list();
		
		public User get(String id);
		
		public boolean saveOrUpdate(User user);

		public User isValidUser(String emailId, String password);
		
		public User getUserByName(String name);
		
		public void delete(String id);
		
		
}
