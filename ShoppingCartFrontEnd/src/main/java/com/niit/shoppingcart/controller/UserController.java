package com.niit.shoppingcart.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;

import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.User;

@Controller
public class UserController {

	public static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserDAO UserDAO;

	@Autowired
	User User;

	@Autowired
	private Cart cart;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Category category;

	@Autowired
	private SupplierDAO supplierDAO;
	
    @Autowired
	private Supplier supplier;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CartDAO cartDAO;

	
	@Autowired
	private HttpSession session;

	@Autowired
	@Qualifier("myAuthenticationManager")
	private AuthenticationManager authenticationManager;

	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView validate(HttpServletRequest request,@RequestParam(value = "emailId") String emailId,
			@RequestParam(value = "password") String password) {
		log.debug("Starting of the method validate");

		ModelAndView mv = new ModelAndView("/Home");
		ModelAndView mu = new ModelAndView("/admin");
		
		User = UserDAO.isValidUser(emailId, password);
	
		if (User != null) {
		log.debug("Valid Credentials");
		
		UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(emailId, password);

		// Authenticate the user
	    Authentication authentication = authenticationManager.authenticate(authRequest);
	    SecurityContext securityContext = SecurityContextHolder.getContext();
	    securityContext.setAuthentication(authentication);
		
		HttpSession session = request.getSession(true);
		session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
	
		
		    session.setAttribute("loggedInUser", User.getName());
			session.setAttribute("loggedInUserID", User.getId());

			session.setAttribute("User", User); //
			session.setAttribute("supplier", supplier);
			session.setAttribute("supplierList", supplierDAO.list());

			session.setAttribute("category", category);
			session.setAttribute("categoryList", categoryDAO.list());
			
			session.setAttribute("productList", productDAO.list());
			List<Cart> cartList = cartDAO.getActiveByUser(User.getId());
			session.setAttribute("cartItemCount", cartList.size());
			
			
			session.setAttribute("loggedOut", false);
			

			if("admin".equalsIgnoreCase(User.getRole()))
			{
				session.setAttribute("isAdmin", true);
				return mu;
			}
			else
			{
				session.setAttribute("isAdmin", false);
			}
		} else {
			log.debug("Invalid Credentials");

			mv.addObject("invalidCredentials", "true");
			mv.addObject("message", "Invalid Credentials");

		}
		log.debug("Ending of the method validate");
		return mv;
	}
	
	

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		log.debug("Starting of the method logout");

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		ModelAndView mv = new ModelAndView("/Home");

		HttpSession session = request.getSession(false);
		if (session != null)
			session.invalidate(); // will remove the attributes which are added to session

		session = request.getSession(true);

		session.setAttribute("supplierList", supplierDAO.list());
		session.setAttribute("categoryList", categoryDAO.list());
		session.setAttribute("productList", productDAO.list());

		mv.addObject("message", "You have successfully logged out");
		mv.addObject("ShowMessage", true);
		session.setAttribute("loggedOut", true);

		log.debug("Ending of the method logout");
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute User User) {
		log.debug("Starting of the method registerUser");
		ModelAndView mv = new ModelAndView("/Home");
		if (UserDAO.get(User.getId()) == null) {
			User.setRole("user"); // all the Users are end Users by default
			UserDAO. saveOrUpdate(User);
			log.debug("You are successfully register");
			mv.addObject("successMsg", "You are successfully registered " + User.getName() + " try logging in now !!!");
		} else {
			log.debug("User exist with this id");
			mv.addObject("errorMessage", "User exist with this id");
		}
		log.debug("Ending of the method registerUser");
		mv.addObject("ShowHomePage", true);
		return mv;
	}

	@RequestMapping(value = "/loginError", method = RequestMethod.POST)
	public ModelAndView loginError(Model model) {
		log.debug("Starting of the method loginError");
		ModelAndView mv = new ModelAndView("Home");
		mv.addObject("ShowMessage", true);
		mv.addObject("message", "Invalid credentials");
		log.debug("Ending of the method loginError");
		return mv;
	}

	@RequestMapping(value = "/accessDenied", method = RequestMethod.POST)
	public ModelAndView accessDenied(Model model) {
		log.debug("Starting of the method accessDenied");
		ModelAndView mv = new ModelAndView("Home");
		mv.addObject("ShowMessage", true);
		mv.addObject("message", "You are not authorized to access this page");
		log.debug("Ending of the method accessDenied");
		return mv;

	}
}
