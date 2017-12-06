package com.lotte.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	
	@ResponseBody
	@RequestMapping("/loginCheck")
	public Integer loginCheck(UserDto userDto,Model model,HttpSession session) {
		
		Integer duplicateCount = userService.loginCheck(userDto);
 		
		if(duplicateCount==1) {
			session.setAttribute("userId", userDto.getUserId());
			return 1;
		}
		else {
			return 0;
		}
	}
	
	@RequestMapping("/signUp")
	public ModelAndView signUp(Model model) {
		return new ModelAndView("/user/sign_up");
	}
	
	@ResponseBody
	@RequestMapping("/idCheck")
	public Integer idCheck(HttpServletRequest request) {
		
		String userId = request.getParameter("userId");
		return userService.idCheck(userId);
	}
	
	@RequestMapping(value="/signUpSubmit", method=RequestMethod.POST)
	public ModelAndView signUpSubmit(UserDto userDto, Model model) {
		
		userService.signUpSubmit(userDto);
		return new ModelAndView("/"); 
	}
	
	

}
