package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Ecombackend.Dao.BillingaddressDAO;
import com.niit.Ecombackend.Dao.RoleDAO;
import com.niit.Ecombackend.Dao.ShippingaddressDAO;
import com.niit.Ecombackend.Dao.UserDAO;
import com.niit.Ecombackend.Model.Billingaddress;
import com.niit.Ecombackend.Model.Role;
import com.niit.Ecombackend.Model.Shippingaddress;

import com.niit.Ecombackend.Model.User;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private RoleDAO roleDAO;
	
	@Autowired
	private Role role;
	
	@Autowired
	private BillingaddressDAO billingDAO;
	@Autowired
	private ShippingaddressDAO shippingDAO;

	@RequestMapping("newUser")
	public ModelAndView newUser(@ModelAttribute User user) {
		user.setEnabled(true);
		role.setEmailId(user.getEmailId());
		role.setRole("ROLE_USER");
		role.setUserName(user.getUserName());
		role.setContactNumber(user.getContactNumber());

		user.setRole(role);
		role.setUser(user);
		Shippingaddress shipping=new Shippingaddress();
		shipping.setAddress(user.getAddress());
		shipping.setContactNumber(user.getContactNumber());
		shipping.setEmailId(user.getEmailId());
		shipping.setUser(user);
		shipping.setUserName(user.getUserName());
		shipping.setZipcode(user.getZipcode());
		Billingaddress billing=new Billingaddress();
		billing.setAddress(user.getAddress());
		billing.setContactNumber(user.getContactNumber());
		billing.setEmailId(user.getEmailId());
		billing.setUserName(user.getUserName());
		billing.setZipcode(user.getZipcode());
        System.out.println("hi");
		
		roleDAO.saveOrUpdate(role);
		shippingDAO.saveOrUpdate(shipping);
		billingDAO.saveOrUpdate(billing);
		userDAO.saveOrUpdate(user);
		System.out.println("hi");

		ModelAndView mv = new ModelAndView("home");

		return mv;
	}
	@RequestMapping("viewuser")
	public String viewuser(Model model) {
		List<User> userList = userDAO.list();
		model.addAttribute("userList", userList);
		model.addAttribute("isUserClickedViewUser", true);
			return "home";
		}
}