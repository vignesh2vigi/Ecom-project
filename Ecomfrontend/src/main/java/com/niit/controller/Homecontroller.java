package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Ecombackend.Dao.ProductDAO;
import com.niit.Ecombackend.Model.Product;


@Controller
public class Homecontroller {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping({"/","home"})
public ModelAndView home(HttpSession session ) {
	List<Product> productList = productDAO.list();
		System.out.println("jf");
	session.setAttribute("productList", productList);
		ModelAndView mv = new ModelAndView("home");
        return mv;
	}
	
	
	
	@RequestMapping("/afterlogin")
	public ModelAndView HOME1() {

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
	@RequestMapping("category")
	public ModelAndView Category() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedCategory", "true");
		return mv;
	}
	/*@RequestMapping("product")
	public ModelAndView Product() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedProduct", "true");
		return mv;
	}*/
	@RequestMapping("supplier")
	public ModelAndView Supplier() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedSupplier", "true");
		return mv;
	}
	@RequestMapping("user")
	public ModelAndView User() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedRegister", "true");
		return mv;
	}
	@RequestMapping("productDescription")
	public ModelAndView ProductDescription() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedMoredetails", "true");
		return mv;
	}
	@RequestMapping("cart")
	public ModelAndView Cart() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedCart", "true");
		return mv;
	}

	
}