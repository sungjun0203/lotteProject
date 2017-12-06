package com.lotte.office;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.lotte.productClass.ProductClassDto;

@Mapper
public interface OfficeDao {
	
	List<OfficeDto> getOfficeList();		

}

