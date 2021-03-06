package com.niit.shoppingcart.daoimpl;

import java.io.Serializable;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;

@Repository("productDAO")
@EnableTransactionManagement
public class ProductDAOImpl implements ProductDAO,Serializable {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Product> list() {

		String hql = "from Product";

		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return query.list();

	}
	
	@Transactional
	public List<Product> ListByCategory(String categoryId) {
		
		String hql = "from Product where category_id='"+categoryId+"'";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return query.list();
	}
	
	@Transactional
	public Product get(String id) {
		return (Product) sessionFactory.getCurrentSession().get(Product.class, id);

	}
	
	@Transactional
	public boolean save(Product product) {

		try {
			if (get(product.getId()) !=null){
				return false;
			}
			
			product = (Product)sessionFactory.getCurrentSession().merge(product);
			sessionFactory.getCurrentSession().save(product);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	
	@Transactional
	public boolean update(Product product) {
		try {
			if(get(product.getId()) == null){
				return false;
			}
			product = (Product)sessionFactory.getCurrentSession().merge(product);
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return false;
		}

	}
	
	
	
	@Transactional
	public boolean delete(Product product) {
		try {
			if(get(product.getId()) != null){
				product = (Product) sessionFactory.getCurrentSession().merge(product);
			sessionFactory.getCurrentSession().delete(product);
			return true;
			}else{
				return false;
			}
		} catch (Exception e) {

			e.printStackTrace();
			return false;
		}

	}	

}
