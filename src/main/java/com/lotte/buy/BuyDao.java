package com.lotte.buy;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BuyDao {
	
	String test(String id); 			
	List<BuyDto> testResult(); 			

}

