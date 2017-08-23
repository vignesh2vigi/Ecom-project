package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.io.File;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;

import com.niit.Ecombackend.Dao.CategoryDAO;
import com.niit.Ecombackend.Dao.ProductDAO;
import com.niit.Ecombackend.Dao.SupplierDAO;
import com.niit.Ecombackend.Model.Category;
import com.niit.Ecombackend.Model.Product;
import com.niit.Ecombackend.Model.Supplier;


@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping("/admin/product/addproduct")
	public ModelAndView Product() {

		ModelAndView mv = new ModelAndView("home");
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		mv.addObject("supplierList", supplierList);
		mv.addObject("categoryList", categoryList);
		
		mv.addObject("isUserClickedProduct", "true");
		return mv;
	}
	@RequestMapping("/admin/product/newProduct")
	public ModelAndView newCategory(@ModelAttribute Product Product, Model model, @RequestParam("image") MultipartFile filedet) {
		ModelAndView mv = new ModelAndView("home");
		productDAO.saveOrUpdate(Product);
		System.out.println("-------Image Insert Start--------");

		String path = "F:\\Ecomfrontend\\src\\main\\webapp\\WEB-INF\\resource\\product\\";

		String fileinfo = path + Product.getProductId() + ".jpg";

		File f = new File(fileinfo);

		if (!filedet.isEmpty()) {
			try {
				byte buff[] = filedet.getBytes();
				FileOutputStream fos = new FileOutputStream(f);
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(buff);
				bs.close();
				fos.close();
			} catch (Exception e) {
				System.out.println("Exception Arised");
			}
		} else {
			System.out.println("---File Uploding Problem---");
		}

		System.out.println("-------Image insert Success------");

		boolean flag = false;
		model.addAttribute("flag", flag);
		mv.addObject("AddProductButtonClicked", true);
		

		return mv;
	}

	@RequestMapping("/admin/product/viewproduct")
	public String viewproduct(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		model.addAttribute("isUserClickedViewProduct", true);
			return "home";
		}
	@RequestMapping("/admin/product/deleteProduct")
	public String deleteProducts(@RequestParam("productId") int productid, Model model){
		
		productDAO.delete(productid);
		return "redirect:viewproduct";
	}
	@RequestMapping("/admin/product/editProduct")
	public String editProduct(@RequestParam ("productId") int productId, Model model){
		Product product = productDAO.getByProductId(productId);
		model.addAttribute("product", product);
		model.addAttribute("editProductClicked", true);
		return "editproduct";
	
	}
	@RequestMapping("productEdited")
	public String productEdited(@ModelAttribute Product product) {
		productDAO.saveOrUpdate(product);
		return "redirect:viewproduct";
		
	}
}
