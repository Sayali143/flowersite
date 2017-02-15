package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class ProductController {
	
	@Autowired
	 Product product;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	Supplier supplier;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("manage_product_remove")
	public String DeleteProduct(@ModelAttribute("id") String id, Model model, HttpSession session )
	{
		product = productDAO.get(id);
		System.out.println(product);
		boolean flag = productDAO.delete(product);
		List<Product> productList = productDAO.list();
		session.setAttribute("ProductList", productList);
		model.addAttribute("ShowProductTable",true);
		
		return "admin";
		
	}
	
	@RequestMapping("manage_product_edit")
	public String editproduct(@ModelAttribute("id") String id, Model model, HttpSession session)
	{
		product = productDAO.get(id);
		model.addAttribute("product", product);
		
		model.addAttribute("UserClickedPRODUCTEDIT", "true");
		return "admin";
	}
	
	@RequestMapping("/editproduct")
	public String Editproduct(Model model,HttpSession session, @ModelAttribute("id") String id, @ModelAttribute("name") String name,@ModelAttribute("description") String description, @ModelAttribute("price") int price, @ModelAttribute("category_id") String category_id, @ModelAttribute("supplier_id") String supplier_id)
	{
		product.setId(id);
		product.setName(name);
		product.setDescription(description);
		product.setPrice(price);
		product.setCategory_id(category_id);
		product.setSupplier_id(supplier_id);
	if(productDAO.update(product))
	{
	   model.addAttribute("message", "Product Added");
	session.setAttribute("product", product);
	List<Product> productList = productDAO.list();
	session.setAttribute("ProductList", productList);
	}
	else{
		model.addAttribute("message", "Error Occurred");
	}
		model.addAttribute("EditProduct", "true");	
	 return "admin";
	}
	
	@RequestMapping(value="/productdisplay")
	public ModelAndView productdisplay(@RequestParam(value = "categoryId") String categoryId){
		 
		ModelAndView mv=new ModelAndView("/Home");
		
		List<Product> productList = productDAO.ListByCategory(categoryId);
		
		if(productList != null){
			mv.addObject("successMsg", productList.size() + "product(s) found !!!");
			mv.addObject("productList", productList);
			mv.addObject("productListLoaded", true);
		}else{
			mv.addObject("successMsg", "No products found !!!");
		}
 
		return mv;
	}
	
	@RequestMapping("show_product/get/{id}")
	public ModelAndView getSelectedProduct(@PathVariable("id") String id,RedirectAttributes redirectAttributes,HttpSession session)
	{
		ModelAndView mv = new ModelAndView("redirect:/Home");
		redirectAttributes.addFlashAttribute("selectedProduct", productDAO.get(id));
		String loggedInUserId = (String) session.getAttribute("loggedInUserId");
		
		return mv;
	}
}
