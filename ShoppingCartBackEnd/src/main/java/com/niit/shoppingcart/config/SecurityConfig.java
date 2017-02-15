package com.niit.shoppingcart.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	DataSource dataSource;

	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {

	  auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery(
			"select mail, password, true from user where mail=?")
		.authoritiesByUsernameQuery(
			"select mail, role from user where mail=?");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

	  http.authorizeRequests()
	  
		/*.antMatchers("/category").access("hasRole('admin')")
		.antMatchers("/addcategory").access("hasRole('admin')")
		.antMatchers("/categorytable").access("hasRole('admin')")
		.antMatchers("/manage_category_remove").access("hasRole('admin')")
		.antMatchers("/manage_category_edit").access("hasRole('admin')")
		
		.antMatchers("/supplier").access("hasRole('admin')")
		.antMatchers("/addsupplier").access("hasRole('admin')")
		.antMatchers("/suppliertable").access("hasRole('admin')")
		.antMatchers("/manage_supplier_remove").access("hasRole('admin')")
		.antMatchers("/manage_supplier_edit").access("hasRole('admin')")
		
		.antMatchers("/product").access("hasRole('admin')")
		.antMatchers("/addproduct").access("hasRole('admin')")
		.antMatchers("/producttable").access("hasRole('admin')")
		.antMatchers("/manage_product_remove").access("hasRole('admin')")
		.antMatchers("/manage_product_edit").access("hasRole('admin')")
	
		.antMatchers("/cart").access("hasRole('ROLE_USER')")
		.antMatchers("/cart_add").access("hasRole('ROLE_USER')")
		.antMatchers("/cart_delete").access("hasRole('ROLE_USER')")*/
		
		.antMatchers("/checkout.xml").access("hasRole('user')")
		
		.and()
		  .formLogin().loginPage("/login").failureUrl("/loginError")
		  .usernameParameter("emailId").passwordParameter("password")
		.and()
			.logout().logoutSuccessUrl("/logout")
		.and()
		  .exceptionHandling().accessDeniedPage("/accessDenied")
		.and()
		  .csrf().ignoringAntMatchers("/addcategory", "/addsupplier", "/addproduct","/register","/validate");
	}
	
	 @Bean(name="myAuthenticationManager")
	 @Override
	 public AuthenticationManager authenticationManagerBean() throws Exception {
	     return super.authenticationManagerBean();
	 }
}