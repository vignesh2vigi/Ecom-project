package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Ecombackend.Dao.SupplierDAO;
import com.niit.Ecombackend.Model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("/admin/supplier/addsupplier")
	public String addsupplier(Model model) {
		model.addAttribute("isUserClickedSupplier", true);
		return "home";
	}

	@RequestMapping("/admin/supplier/newSupplier")
	public ModelAndView newCategory(@ModelAttribute Supplier supplier) {
		supplierDAO.saveOrUpdate(supplier);
		ModelAndView mv = new ModelAndView("home");

		return mv;
	}
	@RequestMapping("/admin/supplier/viewsupplier")
	public String viewsupplier(Model model) {
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isUserClickedViewSupplier", true);
			return "home";
		}
	@RequestMapping("/admin/supplier/deleteSupplier")
	public String deleteSupplier(@RequestParam("supplierId") int supplierid ,Model model){
		
		supplierDAO.delete(supplierid);
		return "redirect:viewsupplier";
		
	}
	@RequestMapping("/admin/supplier/editSupplier")
	public String editSupplier(@RequestParam ("supplierId") int supplierId, Model model){
		Supplier supplier = supplierDAO.getBySupplierId(supplierId);
		model.addAttribute("supplier", supplier);
		model.addAttribute("editSupplierClicked", true);
		return "editsupplier";
		
		
	}
	@RequestMapping("/admin/supplier/supplierEdited")
	public String supplierEdited(@ModelAttribute Supplier supplier) {
		supplierDAO.saveOrUpdate(supplier);
		return "redirect:viewsupplier";
		
	}
}
