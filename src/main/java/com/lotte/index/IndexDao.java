package com.lotte.index;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IndexDao {
	
	String test(String id); 			
	List<IndexDto> testResult(); 			

}

