package com.niit.shoppingcart.webflow;

import java.io.Serializable;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.OrderDAO;
import com.niit.shoppingcart.model.BillingAddress;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Order;
import com.niit.shoppingcart.model.PaymentMethod;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.ShippingAddress;
import com.niit.shoppingcart.model.User;

public class orderwebflow  implements Serializable{
	
	public static final long serialVersionUID = 1L;
	
	private static Logger log = LoggerFactory.getLogger(orderwebflow.class);
	
 
	@Autowired
	private OrderDAO orderDAO;
	
	@Autowired 
	CartDAO cartDAO;
	
	@Autowired
	Cart cart;
	
	@Autowired
	Order order;
	
	@Autowired
	HttpSession httpSession;
	
	@Autowired
	Product product;
	
	@Autowired
	User user;
	
	public Order initFlow(){
		log.debug("staring of initflow method");
		
		order = new Order();
		
		log.debug("Ending of initflow method");
		
		
		return order;
		
	}
	
	public String addShippingAddress(Order order, ShippingAddress shippingAddress)
{
	log.debug("Staring of Add Shipping address");
	
	order.setShippingAddress(shippingAddress);
	
	log.debug("Ending of add address");
			return "success";
}
	public String addBillingAddress(Order Order, BillingAddress billingAddress)
	{
		log.debug("Staring of Add Billing address");
		
		order.setBillingAddress(billingAddress);
		
		log.debug("Ending of Add Billing address");
		
		return "success";
	}
	
	public String addPaymentMethod(Order order, PaymentMethod paymentMethod)
	{
		log.debug("starting of the method addPaymentMethod");
		
		order.setPaymentMethod(paymentMethod.getPaymentMethod());
		
		log.debug("Ending of the method addPaymentMethod");
		
		return "success";
	}
	
	public String confirmOrder(Order order)
	{
		log.debug("starting of the method confirmOrder");
		
		order.setUser_id(user.getId());
		order.setTotalAmount(product.getPrice());
		orderDAO.saveOrUpdate(order);
		
		log.debug("Ending of the method confirmOrder");
		
		return "index";
	}
		
}