package com.lotte.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	@Autowired
	IndexDao indexDao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		
		ModelAndView mav = new ModelAndView();
		
		String a = indexDao.test("test1");
		System.out.println(a);
		
		mav.setViewName("index/index");
		return mav;
		
	}
	
	@RequestMapping("/result")
	public ModelAndView submit() {
		
		ModelAndView mav = new ModelAndView();
		
		List<IndexDto> dto = indexDao.testResult();
		System.out.println("123333333333333333333333333333333333333 : " +dto.get(0).col1);
		
		for(int i=0; i<dto.size(); i++) {
			
			System.out.println(dto.get(0).getCol1());
			System.out.println(dto.get(0).getCol2());
			System.out.println(dto.get(0).getCol3());
		}
		
		mav.addObject("list",dto);
		mav.setViewName("index/index");
		return mav;
		
	}

}
