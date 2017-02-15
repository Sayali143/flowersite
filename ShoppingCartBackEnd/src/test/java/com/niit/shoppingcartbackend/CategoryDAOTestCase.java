package com.niit.shoppingcartbackend;

import static org.junit.Assert.*;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.daoimpl.CategoryDAOImpl;
import com.niit.shoppingcart.model.Category;

import junit.framework.TestCase;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

public class CategoryDAOTestCase {

	@Autowired
	static CategoryDAO categorydao;
	
	@Autowired
	static Category category;
	
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@BeforeClass
	public static void init()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		categorydao = (CategoryDAO) context.getBean("categoryDAO");
		
		category = (Category) context.getBean("category");
		System.out.println("in category bean");
	}
	
	//@Test 
	public void saveTestCase()
	{
		category.setId("10");
		category.setName("sai");
		Assert.assertEquals("saveTestCase",true,categorydao.save(category));	
	}
	
	//@Test 
		public void updateTestCase()
		{
			category.setId("10");
			category.setName("sai");
			Assert.assertEquals("saveTestCase",true,categorydao.update(category));	
		}
	
}