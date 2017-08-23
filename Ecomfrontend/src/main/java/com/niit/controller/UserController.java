package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Ecombackend.Dao.RoleDAO;
import com.niit.Ecombackend.Dao.UserDAO;
import com.niit.Ecombackend.Model.Role;
import com.niit.Ecombackend.Model.User;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private RoleDAO roleDAO;
	
	@Autowired
	private Role role;

	@RequestMapping("newUser")
	public ModelAndView newUser(@ModelAttribute User user) {
		user.setEnabled(true);
		role.setEmailId(user.getEmailId());
		role.setRole("ROLE_USER");
		role.setUserName(user.getUserName());
		role.setContactNumber(user.getContactNumber());

		user.setRole(role);
		role.setUser(user);
        System.out.println("hi");
		userDAO.saveOrUpdate(user);
		roleDAO.saveOrUpdate(role);
		
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