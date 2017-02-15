package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	 Supplier supplier;
	
	@Autowired
	 SupplierDAO supplierDAO;

	
	@RequestMapping("manage_supplier_remove")
	public String deleteSupplier(@ModelAttribute("id") String id, Model model, HttpSession session )
	{
		supplier = supplierDAO.get(id);
		System.out.println(supplier);
		boolean flag = supplierDAO.delete(supplier);
		
		List<Supplier> supplierList = supplierDAO.list();
		session.setAttribute("SupplierList", supplierList);
		
		String msg="successfully";
		if(!flag==true)
			msg="not be success";
		return "forward:/suppliertable";
	}
		
	@RequestMapping("manage_supplier_edit")
	public String editSupplier(@ModelAttribute("id") String id, Model model, HttpSession session )
	{
		supplier = supplierDAO.get(id);
		model.addAttribute("supplier", supplier);
		model.addAttribute("UserclickedEDIT", "true");
		return "admin";
		
	}
	
	@RequestMapping("/editsupplier")
	public String AddSupplier(Model model,HttpSession session,@ModelAttribute("id") String id, @ModelAttribute("name") String name,@ModelAttribute("description") String description)
	{
		supplier.setId(id);
		supplier.setName(name);
		supplier.setDescription(description);
		
		if(supplierDAO.update(supplier))
		{
			model.addAttribute("message", "Supplier updated");
			session.setAttribute("supplier", supplier);
			List<Supplier> supplierList = supplierDAO.list();
			session.setAttribute("SupplierList", supplierList);
		}
		else
		{
			 model.addAttribute("message","Error occured");
			 model.addAttribute("EditSupplier", "true");
		}		
		return "admin";
	}
	
}
