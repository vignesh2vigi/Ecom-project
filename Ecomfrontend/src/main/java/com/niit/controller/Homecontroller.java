package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Ecombackend.Dao.CartDAO;
import com.niit.Ecombackend.Dao.ProductDAO;
import com.niit.Ecombackend.Model.Cart;
import com.niit.Ecombackend.Model.Product;
import com.niit.exeption.ProductNotFoundException;


@Controller
public class Homecontroller {

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CartDAO cartDAO;
	
	
	@RequestMapping({"/","home"})
public ModelAndView home(HttpSession session ) {
	List<Product> productList = productDAO.list();
		System.out.println("jf");
	session.setAttribute("productList", productList);
		ModelAndView mv = new ModelAndView("home");
        return mv;
	}
	
	
	
	
	@RequestMapping("/loginpage")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("home");

		if (error != null) {
			model.addAttribute("error", "Mail Id or Password Incorrect");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
		}

		mv.addObject("isUserClickedLogin", true);
		return mv;
	}
	
	@RequestMapping("user")
	public ModelAndView User() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedRegister", "true");
		return mv;
	}
	@RequestMapping("/productDescription/{productid}")
	public ModelAndView ProductDescription(@PathVariable("productid") int productid) throws ProductNotFoundException {
		

		ModelAndView mv = new ModelAndView("home");
		Product product=productDAO.getByProductId(productid);
		if(product==null) throw new ProductNotFoundException();
		mv.addObject("product",product);
		mv.addObject("isUserClickedMoredetails", "true");
		return mv;
	}
	
	

	
}