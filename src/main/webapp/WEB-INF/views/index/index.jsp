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
	<jsp:include page="../common/header.jsp"></jsp:include>
	<!-- 헤더 끝 -->

	<div class="container">

	<div class="col-lg-12" style="margin-bottom:20px">
		<button type="button" class="btn btn-primary">Primary</button>
		<button type="button" class="btn btn-secondary">Secondary</button>
		<button type="button" class="btn btn-success">Success</button>
		<button type="button" class="btn btn-info">Info</button>
		<button type="button" class="btn btn-warning">Warning</button>
		<button type="button" class="btn btn-danger">Danger</button>
	</div>
	
	<div class="card text-white bg-primary" style="margin-bottom:20px">
	  <div class="card-body">
	    <blockquote class="card-blockquote">
	      <p>CARD 정보</p>
	      <p> hello </p>
	    </blockquote>
	  </div>
	</div>
	

		<table class="table table-striped table-hover table-bordered" style="margin-bottom:20px">
			<thead class="thead-dark">
				<tr>
					<th>#</th>
					<th>헤더1</th>
					<th>헤더2</th>
					<th>헤더3</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="list">
					<tr>
						<td>1</td>
						<td>${list.col1}</td>
						<td>${list.col2}</td>
						<td>${list.col3}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
	  <div class="btn-group mr-2" role="group" aria-label="First group">
	    <button type="button" class="btn btn-secondary">1</button>
	    <button type="button" class="btn btn-secondary">2</button>
	    <button type="button" class="btn btn-secondary">3</button>
	    <button type="button" class="btn btn-secondary">4</button>
	  </div>
	 </div>
	 
	</div>
	
	
	
	
	
	<!-- 헤더 -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- 헤더 끝 -->



</body>
</html>