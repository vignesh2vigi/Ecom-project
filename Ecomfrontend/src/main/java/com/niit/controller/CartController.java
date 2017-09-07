package com.niit.controller;
import java.security.Principal;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.Ecombackend.Dao.BillingaddressDAO;
import com.niit.Ecombackend.Dao.CartDAO;
import com.niit.Ecombackend.Dao.ProductDAO;
import com.niit.Ecombackend.Dao.ShippingaddressDAO;
import com.niit.Ecombackend.Dao.UserDAO;
import com.niit.Ecombackend.Model.Billingaddress;
import com.niit.Ecombackend.Model.Cart;
import com.niit.Ecombackend.Model.Product;
import com.niit.Ecombackend.Model.Shippingaddress;
import com.niit.Ecombackend.Model.User;

@Controller
public class CartController {


	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private Cart cart;
	
	@Autowired
	private BillingaddressDAO billingDAO;
	@Autowired
	private ShippingaddressDAO shippingDAO;
	
	@RequestMapping("cart/myCart")
	public String myCart(Model model, Principal p,HttpSession session){
	String email =	p.getName();
	User user = userDAO.getByEmailId(email);
	 List<Cart> cartList = cartDAO.getByEmailId(email);
	 session.setAttribute("noOfItem", cartList.size());
	Long GrandTotal = cartDAO.getTotalAmount(user.getUserId());
	 model.addAttribute("cartList", cartList);
	 model.addAttribute("myCartClicked", true);
	 model.addAttribute("GrandTotal", GrandTotal);
		
		return "home";
		}
	@RequestMapping("/cart/addtocart")
	public String addCart(@RequestParam("productId") int productId, Principal p, Model model){
		Product product = productDAO.getByProductId(productId);		
		User user = userDAO.getByEmailId(p.getName());		
		Cart crt = cartDAO.getByUserandProduct(p.getName(), productId);
		System.out.println(product.getProductName());
		if(product.getStock() > 0 ){
			
			if(cartDAO.itemAlreadyExist(p.getName(), productId, true)){
				int quantity = crt.getQty() + 1;
				crt.setQty(quantity);
				crt.setTotal(product.getPrice() * quantity);
				cartDAO.saveOrUpdate(crt);
			}
			else{
				
		
		Random t = new Random();
		int day = 2 + t.nextInt(7);
		
		cart.setEmailId(p.getName());
		cart.setPrice(product.getPrice());
		cart.setProductId(productId);
		cart.setProductName(product.getProductName());
		cart.setQty(1);
		cart.setStatus("N");
		cart.setUserId(user.getUserId());
		cart.setUserName(user.getUserName());
		cart.setDays(day);
		cart.setTotal(product.getPrice()*cart.getQty());
		cartDAO.saveOrUpdate(cart);
			}
		int stc = product.getStock() - 1;
		product.setStock(stc);
		
		productDAO.saveOrUpdate(product);
			
		return "redirect:/cart/myCart";
		}
		else {
			
			return "redirect:/cart/myCart";
		}
		
		
	}

	@RequestMapping("/cart/removeCart")
	public String removeCart(@RequestParam("cartId") int cartId, Model model){
		Cart cart = cartDAO.getByCartId(cartId);
		Product product = productDAO.getByProductId(cart.getProductId());
		
		int qty = product.getStock() + cart.getQty();
		
		product.setStock(qty);
		productDAO.saveOrUpdate(product);
		
		cartDAO.delete(cartId);
		return "redirect:myCart";
	}
	
	@ModelAttribute
	public void commonToUser(Model model){
		model.addAttribute("userLoggedIn", "true");
	}
	@RequestMapping("/order/{shippingid}")
	public String order(@PathVariable("shippingid") int id,Principal p, Model model){
		
		User user = userDAO.getByEmailId(p.getName());
		String emailid=user.getEmailId();
		List<Cart> listcart=cartDAO.getByEmailId(emailid);
		Billingaddress billing=billingDAO.getByContactNumber(user.getContactNumber());
		Shippingaddress shipping=shippingDAO.getByShippingId(id);
		model.addAttribute("shipping",shipping);
		model.addAttribute("billing",billing);
		model.addAttribute("user", user);
		model.addAttribute("i",listcart);
		model.addAttribute("isuserclickedcash",true);
		System.out.println(listcart.size());
		return "home";
	}
	@RequestMapping("/payment/{shippingId}")
	public String payment( Model model, @PathVariable("shippingId")int shippingId,Principal p) {
		model.addAttribute("shippingId",shippingId);
		model.addAttribute("isuserclickeddeliverhere",true);
		return "home";
	}
	@RequestMapping("/card")
	public String card( Model model) {
		model.addAttribute("isuserclickedcard",true);
		return "home";
	}
	@RequestMapping("/thankyou")
	public String thankyou( Model model) {
		model.addAttribute("isuserclickedthank",true);
		return "home";
	}
}
	