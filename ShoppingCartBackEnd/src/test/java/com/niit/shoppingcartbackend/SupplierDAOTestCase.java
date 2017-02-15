package com.niit.shoppingcartbackend;

import static org.junit.Assert.*;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.daoimpl.SupplierDAOImpl;
import com.niit.shoppingcart.model.Supplier;

import junit.framework.TestCase;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

public class SupplierDAOTestCase {

	@Autowired
	static SupplierDAO supplierdao;
	
	@Autowired
	static Supplier supplier;
	
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@BeforeClass
	public static void init()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		supplierdao = (SupplierDAO) context.getBean("supplierDAO");
		System.out.println("in supplierdao bean");
		
		supplier = (Supplier) context.getBean("supplier");
		System.out.println("in supplier bean");
	}
	
	//@Test 
	public void saveOrUpdateTestCase()
	{
		supplier.setId("10");
		supplier.setName("sai");
		Assert.assertEquals("saveTestCase",true,supplierdao.save(supplier));	
	}
	
}