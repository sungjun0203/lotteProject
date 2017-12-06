package com.lotte.buy;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lotte.product.ProductService;
import com.lotte.user.UserService;

@Controller
@RequestMapping("/buy")
public class BuyController {
	
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/write")
	public ModelAndView write(Model model, HttpSession session) {
		
		String userId = (String)session.getAttribute("userId");
		
		
		//model.addAttribute("userInfo",userService.userInfo(userId));
		//model.addAttribute("officeList", productService.officeList());
		
		return new ModelAndView("/buy/buy_write");
	}
}
