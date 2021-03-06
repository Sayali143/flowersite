package com.niit.shoppingcart.daoimpl;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

@Repository("userDAO")
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO {

	Logger log = LoggerFactory.getLogger(UserDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	public UserDAOImpl(SessionFactory sessionFactory) 
	{
		try {
			this.sessionFactory = sessionFactory;
			log.info(" The connection is established properly..");
		} catch (Exception e) {
			log.error("Not able to prepare connection.  Please check application" + "context java file");
			e.printStackTrace();
		}
	}

	@Transactional
	public List<User> list() {
		log.debug("Starting of the method list");
		String hql = "from User";

		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		log.debug("Ending of the method list");
		return query.list();

	}
	
	@Transactional
	public User get(String id) {
		return (User) sessionFactory.getCurrentSession().get(User.class, id);

	}

	@Transactional
	public User validate(String id, String password) {
		String hql = "from User where id ='" + id + "'  and password='" + password + "'";

		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return (User) query.uniqueResult();

	}
	@Transactional
	public boolean saveOrUpdate(User user) {
		log.debug("Starting of the method : saveOrUpdate ");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(user);
		} 
		catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}

		return true;
	}
	
	@Transactional
	public User isValidUser(String emailId, String password) 
	{
		log.debug("Starting of the method : isValidUser ");
		log.info("The user id :" + emailId);

		// Select * from User where id = 'id' and password = 'password';
		String hql = "from User where mail = " + "'" + emailId + "'" + " and " + "password = " + "'" + password + "'";

		log.info(" The query is :" + hql);

		return getUserDetails(hql);

	}
	
	@Transactional
	private User getUserDetails(String hql)
	{
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();

		if (list != null && !list.isEmpty())
		{
			return list.get(0);
		}

		return null;

	}

	public User getUserByName(String name) {
		log.debug("Starting of the method : getUserByName ");
		String hql = "from user where name=" + "'" + name + "'";

		return getUserDetails(hql);
	}

	public void delete(String id) {
		
		log.debug("Starting of the method : delete ");
		try {
			User user = new User();
			user.setId(id);
			sessionFactory.getCurrentSession().delete(user);
			log.debug("Ending of the method : delete ");
		} catch (HibernateException e) {
			log.error("Not able to delete the record:" + e.getMessage());
			e.printStackTrace();
		}
		
	}

}
