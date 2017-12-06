package com.lotte.index;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lotte.user.UserDto;

@Controller
public class IndexController {
	
	@RequestMapping("/")
	public ModelAndView login(Model model) {
		return new ModelAndView("/user/login");
	}
	
	@RequestMapping("/index")
	public ModelAndView index(UserDto userDto, HttpSession session) {
		
		String test = (String) session.getAttribute("userId");
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("index/index");
		return mav;
	}
}
