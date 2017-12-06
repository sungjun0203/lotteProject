package com.lotte.office;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lotte.user.UserDto;

@Controller
@RequestMapping("/office")
public class OfficeController {
	
	@RequestMapping("/write")
	public ModelAndView write(Model model) {
		
		
		return new ModelAndView("/buy/buy_write");
	}
}
