package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.util.Util;

@Controller
public class AdminController {
	private static Logger log = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private Product product;

	@Autowired
	private Supplier supplier;

	@Autowired
	private Category category;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	private String path = "E:\\DT\\FlowerSite\\ShoppingCartFrontEnd\\src\\main\\webapp\\resources\\img";
	
	
	@RequestMapping("/addcategory")
	 public String Addcategory(Model model, HttpSession session, @ModelAttribute("id") String id, @ModelAttribute("name") String name, @ModelAttribute("description") String description)
	 {
		category.setId(id);
		category.setName(name);
		category.setDescription(description); 
		if(categoryDAO.save(category))
			 
		{
			 model.addAttribute("message","Category added");
			 session.setAttribute("category", category);
			   List<Category> categoryList = categoryDAO.list();
			   session.setAttribute("CategoryList", categoryList);
		}
		else
			 model.addAttribute("message","Error occured");
		 	 model.addAttribute("UserClickedCATEGORY", "true"); 
		 return "admin";
	}
	
	@RequestMapping("/addsupplier")
	 public String Addsupplier(Model model, HttpSession session, @ModelAttribute("id") String id, @ModelAttribute("name") String name, @ModelAttribute("description") String description)
	 {
		 supplier.setId(id);
		 supplier.setName(name);
		 supplier.setDescription(description);
		if(supplierDAO.save(supplier))
			 
		{
			 model.addAttribute("message","Supplier added");
			 session.setAttribute("supplier", supplier);
			   List<Supplier> supplierList = supplierDAO.list();
			   session.setAttribute("supplierList", supplierList);
		}
		else
			 model.addAttribute("message","Error occured");
		 	 model.addAttribute("UserClickedSUPPLIER", "true"); 
		 return "admin";
	}
	
	 @RequestMapping("/addproduct")
	 public String Addproduct(Model model, HttpSession session, @RequestParam("image") MultipartFile file,  @ModelAttribute("id") String id, @ModelAttribute("name") String name, @ModelAttribute("price") int price, @ModelAttribute("category_id") String category_id, @ModelAttribute("supplier_id") String supplier_id, @ModelAttribute("description") String description)
	 {
		 boolean isPresent =productDAO.get(id) !=null;
		 product.setId(id);
		 product.setName(name);
		 product.setPrice(price);
		 product.setDescription(description);
		 product.setCategory_id(category_id);
       	 product.setSupplier_id(supplier_id);
		 
	    boolean flag = false;
		 if(isPresent){
			 flag = productDAO.update(product);
		 }else{
			 flag = productDAO.save(product);
		 }
		 if(flag){
		Util.upload(path, file, product.getId()+".jpg");
			 model.addAttribute("message", "Product added");
			 session.setAttribute("product", product);
			 List<Product> productList = productDAO.list();
			 session.setAttribute("ProductList", productList);
		 }else{
			 model.addAttribute("message", "Error occured");
		 }
			 session.removeAttribute("product");
			 model.addAttribute("UserClickedPRODUCT", true);
			 return "admin";
	 }
	 
	 
	@RequestMapping(value = {"/categorytable"})
	public String categorytable(Model model, HttpSession session)
	
	{
		model.addAttribute("UserClickedViewCategoryTable", "true");
	   List<Category> categoryList = categoryDAO.list();
	   session.setAttribute("CategoryList", categoryList);
	 
	 			return "admin";
	}
 
	@RequestMapping(value = {"/suppliertable"})
	public String suppliertable(Model model, HttpSession session)
	
	{
		model.addAttribute("UserClickedViewSupplierTable", "true");
	   List<Supplier> supplierList = supplierDAO.list();
	   session.setAttribute("SupplierList", supplierList);
	 
	 			return "admin";
	}
	
	@RequestMapping(value = {"/producttable"})
	public String producttable(Model model, HttpSession session)
	
	{
		model.addAttribute("UserClickedViewProductTable", "true");
	   List<Product> productList = productDAO.list();
	   session.setAttribute("ProductList", productList);
	 
	 			return "admin";
	}
	
	 @RequestMapping("/category")
		public String Category(Model model)
		{
			model.addAttribute("UserClickedCATEGORY", "true");
			return "admin";
		}
	
	 
	 @RequestMapping("/supplier")
		public String Supplier(Model model)
		{
			model.addAttribute("UserClickedSUPPLIER", "true");
			return "admin";
		}
	
	 @RequestMapping("/product")
		public String Product(Model model)
		{
			model.addAttribute("UserClickedProduct", "true");
			return "admin";
		}
}