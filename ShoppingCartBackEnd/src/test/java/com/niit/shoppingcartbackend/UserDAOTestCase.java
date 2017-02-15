package com.niit.shoppingcartbackend;

import static org.junit.Assert.*;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.daoimpl.UserDAOImpl;
import com.niit.shoppingcart.model.User;

import junit.framework.TestCase;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

public class UserDAOTestCase {

	@Autowired
	static UserDAO userdao;
	
	@Autowired
	static User user;
	
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@BeforeClass
	public static void init()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		userdao = (UserDAO) context.getBean("userDAO");
		System.out.println("in userdao bean");
		
		user = (User) context.getBean("user");
		System.out.println("in user bean");
	}
	
	//@Test 
	public void saveOrUpdateTestCase()
	{
		user.setId("10");
		user.setName("sai");
		user.setPassword("sayali");
		user.setContact("654654655");
		user.setRole("Customer");
		Assert.assertEquals("saveTestCase",true,userdao.saveOrUpdate(user));	
	}

}