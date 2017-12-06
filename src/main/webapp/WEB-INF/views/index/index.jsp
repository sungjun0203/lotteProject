<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<title>Insert title here</title>
<jsp:include page="../common/common.jsp"></jsp:include>
</head>
<body>

	<!-- 헤더 -->
	<div class="header">
		<jsp:include page="../common/header.jsp"></jsp:include>
	</div>
	<!-- 헤더 끝 -->

	<div class="container">
		<div class="row">

			<div class="col-lg-12 row">
				<div class="col-lg-8">
					<div class="card text-white bg-primary" style="height:100%">
					  <div class="card-body">
					    <blockquote class="card-blockquote">
					      <p> 공지사항 </p>
					      <p> 공지사항은 미구현 </p>
					    </blockquote>
					  </div>
					</div>
				</div>	
			
				<div class="col-lg-4">
					<div class="list-group">
						<a href="#" class="list-group-item list-group-item-action active"> 사용자 정보 </a> 
						<a href="#" class="list-group-item list-group-item-action">	오늘 결제 수 </a> 
						<a href="#"	class="list-group-item list-group-item-action disabled"> 오늘 총 금액 </a>
					</div>
				</div>
			</div>
			
			<div class="col-lg-12 row" style="margin-top:20px; padding-right:30px; padding-left:30px">
				<table class="table table-striped table-hover table-bordered">
				  <thead class="thead-dark">
				    <tr>
				      <th>#</th>
				      <th>아이템 이름</th>
				      <th>가격</th>
				      <th>수량</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td>1</td>
				      <td>아이스 아메리카노</td>
				      <td>3500</td>
				      <td>2</td>
				    </tr>
				     <tr>
				      <td>2</td>
				      <td>아이스 라뗴</td>
				      <td>4000</td>
				      <td>2</td>
				    </tr>
				     <tr>
				      <td>3</td>
				      <td>아이스 카푸치노</td>
				      <td>3500</td>
				      <td>2</td>
				    </tr>
				    
				  </tbody>
				</table> 
			</div>
			
	
	
	
</div>
	<!-- 푸터 -->
	<div class="footer">
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	<!-- 푸터 끝 -->
	



</body>
</html>