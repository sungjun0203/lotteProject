package com.lotte.product;

import java.sql.Date;

public class ProductDto {
	
	Integer productId; 		// 상품 ID
	String productName;		// 상품명
	Integer productPrice;	// 상품판매가격
	Integer productOrgPrice;	// 상품원가
	Integer productClass;		// 상품 분류
	String productMakeDate;		// 상품 제조일	
	Integer productMake;		// 상품 제조사 번호
	Integer productCount;		// 상품 수량
	String productUserId;
	Integer officeId;
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}
	public Integer getProductOrgPrice() {
		return productOrgPrice;
	}
	public void setProductOrgPrice(Integer productOrgPrice) {
		this.productOrgPrice = productOrgPrice;
	}
	public Integer getProductClass() {
		return productClass;
	}
	public void setProductClass(Integer productClass) {
		this.productClass = productClass;
	}
	public String getProductMakeDate() {
		return productMakeDate;
	}
	public void setProductMakeDate(String productMakeDate) {
		this.productMakeDate = productMakeDate;
	}
	public Integer getProductMake() {
		return productMake;
	}
	public void setProductMake(Integer productMake) {
		this.productMake = productMake;
	}
	public Integer getProductCount() {
		return productCount;
	}
	public void setProductCount(Integer productCount) {
		this.productCount = productCount;
	}
	public String getProductUserId() {
		return productUserId;
	}
	public void setProductUserId(String productUserId) {
		this.productUserId = productUserId;
	}
	public Integer getOfficeId() {
		return officeId;
	}
	public void setOfficeId(Integer officeId) {
		this.officeId = officeId;
	}
	
	
	

}
