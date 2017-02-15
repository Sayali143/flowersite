package com.niit.shoppingcartbackend;

import static org.junit.Assert.*;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.daoimpl.ProductDAOImpl;
import com.niit.shoppingcart.model.Product;

import junit.framework.TestCase;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

public class ProductDAOTestCase {

	@Autowired
	static ProductDAO productdao;
	
	@Autowired
	static Product product;
	
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@BeforeClass
	public static void init()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		productdao = (ProductDAO) context.getBean("productDAO");
		System.out.println("in productdao bean");
		
		product = (Product) context.getBean("product");
		System.out.println("in product bean");
	}
	
	//@Test 
	public void saveTestCase()
	{
		product.setId("10");
		product.setName("sai");
		Assert.assertEquals("saveTestCase",true,productdao.save(product));	
	}
	
}