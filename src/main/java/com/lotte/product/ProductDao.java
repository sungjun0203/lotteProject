package com.lotte.product;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductDao {
	
	void setWriteProduct(ProductDto productDto);
	
	List<ProductDto> myProductDto(String id);
	
	List<ProductDto> getOfficeProductList(Integer officeId);

}

