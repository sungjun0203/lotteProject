<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<title>Insert title here</title>
<jsp:include page="../common/common.jsp"></jsp:include>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>




<style>
/* CSS used here will be applied after bootstrap.css */
.navbar {
	background: #FFFFFF;
}

.navbar .navbar-center {
	display: inline-block;
	float: none;
	vertical-align: top;
	text-align: center;
}

#page_footer {
	height: 60px;
	background: #f5f5f5;
}

.footer_text {
	margin: 20px 0;
	color: #777;
}
</style>


</head>
<!-- 헤더 -->
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- 헤더 끝 -->

<!-- 작성자: 박성준 -->
<!-- 관리자 로그인 -->


<div class="container">

	<form id="productWriteForm" method="POST">

		<legend>주문 등록</legend>

		<div class="col-lg-2"></div>
		<div class="col-lg-10">

			<div class="col-lg-6">
				<div class="form-group row">
					<label for="exampleInputEmail1" class="col-sm-4">지점</label> 
					
					<select class="form-control col-sm-8" id="officeIdTemp" name="officeIdTemp" onchange="officeItemList()">
				        <c:forEach items="${officeList}" var="office">
				      	 	<option value='${office.officeId}'>${office.officeName}</option>
						</c:forEach>
				       
				      </select>
				</div>
			</div>
			<div class="col-lg-6"></div>
			
			<div class="col-lg-6">
				<div class="form-group row">
					<label for="exampleInputEmail1" class="col-sm-4">상품</label>
					
					<select class="form-control col-sm-8" id="productName" name="productName">
				       
				      </select>
				</div>
			</div>
			<div class="col-lg-6"></div>
			
			<div class="col-lg-6">
				<div class="form-group row">
					<label for="exampleInputEmail1" class="col-sm-4">수량</label> <input
						type="text" class="form-control col-sm-8" id="productCount"
						name="productCount" placeholder="수량">
				</div>
			</div>
			<div class="col-lg-6"></div>
			
			<div class="col-lg-6">
				<div class="form-group row">
					<label for="exampleInputEmail1" class="col-sm-4">가격</label> <input
						type="text" class="form-control col-sm-8" id="productPrice"
						name="productPrice" placeholder="판매가">
				</div>
			</div>
			<div class="col-lg-6"></div>
			
			<div class="col-lg-6">
				<div class="form-group row">
					<label for="exampleInputEmail1" class="col-sm-4">카드</label> <input
						type="text" class="form-control col-sm-8" id="productPrice"
						name="productPrice" placeholder="카드">
				</div>
			</div>
			<div class="col-lg-6"></div>
			
			<div class="col-lg-6">
				<div class="form-group row">
					<label for="exampleInputEmail1" class="col-sm-4">현금</label> <input
						type="text" class="form-control col-sm-8" id="productPrice"
						name="productPrice" placeholder="현금">
				</div>
			</div>
			<div class="col-lg-6"></div>
			
			<div class="col-lg-6">
				<div class="form-group row">
					<label for="exampleInputEmail1" class="col-sm-4">포인트</label> <input
						type="text" class="form-control col-sm-8" id="productPrice"
						name="productPrice" placeholder="포인트">
				</div>
				
				사용자의 포인트 : ${userInfo.userPoint}
			</div>
			<div class="col-lg-6"></div>
			
			<div class="col-lg-4"></div>
				<div class="col-lg-5">
					<div class="col-sm-12 row">
						<button type="button" onclick="signUp()" id="signUpBtn" class="btn btn-info"
							disabled>회원가입</button>
						<button type="button" class="btn btn-warning"
							onclick="returnIndex();">돌아가기</button>
					</div>
				</div>
			
			
		</div>
		
		
		<input type="hidden" id="productClass" name="productClass">
		<input type="hidden" id="productMake" name="productMake">
		
	</form>
</div>


<!-- 푸터 -->
<jsp:include page="../common/footer.jsp"></jsp:include>
<!-- 푸터 끝 -->
</body>
</html>

<script>


function officeItemList(){
	
	
	
	var officeId = $("#officeIdTemp").val();
	$("#productName").find("option").remove();
	var target = document.getElementById("productName");
	
	$.ajax({

		url : "/product/officeProductList",
		dataType : "text",
		type : "POST",
		data : {
			"officeId" : officeId
		},
		success : function(data) {
			
			for(var i=0; i<data.length; i++){
				
				var opt = document.createElement("option");
			    opt.value = data[i].productId;
			    opt.innerHTML = data[i].productName;
			    target.appendChild(opt);
				
			}
			
			

		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n" + "error:" + error);
		}
	});
	
}













$( function() {
	$("#productMakeDate").datepicker();
	$("#productMakeDate").datepicker("option", "dateFormat", "yy-mm-dd");
  } );


function submitBtn(){
	
	var productName = $("#productName").val();
	var productPrice = $("#productPrice").val();
	var productOrgPrice = $("#productOrgPrice").val();
	var productClass = $("#productClassTemp").val();
	var productMakeTime = $("#productMakeTime").val();
	var productMake = $("#productMakeTemp").val();
	var productCount = $("#productCount").val();
	
	$("#productMake").val($("#productMakeTemp option:selected").val());
	$("#productClass").val($("#productClassTemp option:selected").val());
	
	alert($("#productMake").val());
	
	if(productName==''|| productPrice==''|| productOrgPrice==''|| productClass==''||
			productMakeTime==''|| productMake==''|| productCount==''){
		alert("모든 창을 입력해주세요");
	}
	
	else{
		$("#productWriteForm").attr("action","/product/writeSubmit");
		$("#productWriteForm").submit();
	}
	
	
}



</script>