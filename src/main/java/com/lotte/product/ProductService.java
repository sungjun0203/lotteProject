package com.lotte.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lotte.makeCompany.MakeCompanyDao;
import com.lotte.makeCompany.MakeCompanyDto;
import com.lotte.office.OfficeDao;
import com.lotte.office.OfficeDto;
import com.lotte.productClass.ProductClassDao;
import com.lotte.productClass.ProductClassDto;

@Service
public class ProductService {
	
	@Autowired
	MakeCompanyDao makeCompanyDao;
	
	@Autowired
	ProductClassDao productClassDao;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	OfficeDao officeDao;
	
	public List<MakeCompanyDto> makeCompanyList(){
		
		return makeCompanyDao.getAllMakeCompany();
		
	}
	
	public List<ProductClassDto> productClassList(){
		
		return productClassDao.getAllProductClass();
	}
	
	public List<OfficeDto> officeList(){
		
		return officeDao.getOfficeList();
	}
	
	public void productWirteSubmit(ProductDto productDto, String userId) {
		
		productDto.setProductUserId(userId);
		
		productDao.setWriteProduct(productDto);
		
	}
	
//	public List<ProductDto> getOfficeProductList(Integer officeId){
//		
//		return productDao.getOfficeProductList(officeId);
//	}

}
