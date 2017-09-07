package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Ecombackend.Dao.CategoryDAO;
import com.niit.Ecombackend.Model.Category;

@Controller
public class CategoryController {

	@Autowired
	private CategoryDAO categoryDAO;
	@RequestMapping("/admin/category/addcategory")
	public String addcategory(Model model) {
		model.addAttribute("isUserClickedCategory", true);
		return "home";
	}


	@RequestMapping("/admin/category/newCategory")
	public ModelAndView newCategory(@ModelAttribute Category category) {
		categoryDAO.saveOrUpdate(category);
		ModelAndView mv = new ModelAndView("home");

		return mv;
	}
	
	@RequestMapping("/admin/category/viewcategory")
	public String viewcategory(Model model) {
	List<Category> categoryList = categoryDAO.list();
	model.addAttribute("categoryList", categoryList);
	model.addAttribute("isUserClickedViewCategory", true);
		return "home";
	}
	@RequestMapping("/admin/category/deleteCategory")
	public String deleteCategory(@RequestParam ("categoryId") int categoryId){
		
		categoryDAO.delete(categoryId);
		
		return "redirect:viewcategory";
					
	}
	@RequestMapping("/admin/category/editCategory")
	public String editCategory(@RequestParam ("categoryId") int categoryId, Model model){
		Category category = categoryDAO.getByCategoryId(categoryId);
		model.addAttribute("category", category);
		model.addAttribute("editCategoryClicked", true);
		return "editcategory";
		
	}
	@RequestMapping("/admin/category/categoryEdited")
	public String categoryEdited(@ModelAttribute Category category) {
		categoryDAO.saveOrUpdate(category);
		return "redirect:viewcategory";
		
	} 
}




