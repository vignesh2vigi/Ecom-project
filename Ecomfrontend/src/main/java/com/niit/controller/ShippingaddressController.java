package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Ecombackend.Dao.CartDAO;
import com.niit.Ecombackend.Dao.ShippingaddressDAO;
import com.niit.Ecombackend.Dao.UserDAO;
import com.niit.Ecombackend.Model.Cart;
import com.niit.Ecombackend.Model.Shippingaddress;
import com.niit.Ecombackend.Model.User;



@Controller
public class ShippingaddressController {
	@Autowired
	private ShippingaddressDAO shippingaddressDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private Cart cart;

	@RequestMapping("/cart/shippingaddressPage")
	public ModelAndView newShippingaddress(){
		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("newShippingaddressClicked", "true");
		return mv;
	}
	
	@RequestMapping("/cart/proceed")
	public String Proceed(Principal p, Model model){
		String email = 	p.getName();
		List<Shippingaddress> shippingList = shippingaddressDAO.list(email);
		model.addAttribute("shippingList", shippingList);
		System.out.println(shippingList.size());
		model.addAttribute("viewShippingAddressClicked", true);
	 return "home";
	}
	
	@RequestMapping("/cart/deleteshippingAddress")
	public String deleteshippingAddress(@RequestParam("shippingId") int shippingId, Model model){
		shippingaddressDAO.delete(shippingId);
		return "redirect:proceed";
		
	}
	@RequestMapping("/cart/editshippingaddress")
	public String editshippingAddress(@RequestParam("shippingId")int shippingId,Model model){
	Shippingaddress shippingaddress=	shippingaddressDAO.getByShippingId(shippingId);
		model.addAttribute("shippingaddress", shippingaddress);
		model.addAttribute("newShippingaddressClicked", true);
		return "home";
		
	}
	
	
}