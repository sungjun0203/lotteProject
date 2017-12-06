package com.lotte.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/write")
	public ModelAndView write(Model model) {
		
		model.addAttribute("makeCompanyList", productService.makeCompanyList());
		model.addAttribute("productClassList", productService.productClassList());
		model.addAttribute("officeList", productService.officeList());
		
		return new ModelAndView("/product/product_write");
	}
	
	
	@RequestMapping("/writeSubmit")
	public ModelAndView writeSubmit(Model model, ProductDto productDto, HttpSession session) throws Exception{
		
		System.out.println("name : " + productDto.getProductName());
		
		productService.productWirteSubmit(productDto, (String)session.getAttribute("userId"));
		
		return new ModelAndView("redirect:/index");
	}
	
	
	
	
}
