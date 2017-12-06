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

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>



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
<jsp:include page="../common/header_noUser.jsp"></jsp:include>
<!-- 헤더 끝 -->

<!-- 작성자: 박성준 -->
<!-- 관리자 로그인 -->


<div class="container">

	<form id="signUpForm" method="POST">

		<legend>회원가입</legend>

		<div class="col-lg-2"></div>
		<div class="col-lg-10">


			<div class="row">
				<div class="col-lg-6 col-xs-7">
					<div class="form-group row">
						<label for="exampleInputEmail1" class="col-sm-4">ID</label> <input
							type="text" class="form-control col-sm-8" id="userId"
							name="userId" placeholder="아이디" onkeydown="disableFunc()">
					</div>
				</div>

				<div class="col-lg-2 col-xs-3">
					<button type="button" class="btn btn-danger" onclick="idCheck()">중복확인</button>
				</div>


				<div class="col-lg-6">
					<div class="form-group row">
						<label for="exampleInputEmail1" class="col-sm-4">PW</label> <input
							type="password" class="form-control col-sm-8" id="userPw"
							name="userPw" placeholder="비밀번호">
					</div>
				</div>
				<div class="col-lg-6"></div>


				<div class="col-lg-6">
					<div class="form-group row">
						<label for="exampleInputEmail1" class="col-sm-4">이름</label> <input
							type="text" class="form-control col-sm-8" id="userName"
							name="userName" placeholder="이름">
					</div>
				</div>
				<div class="col-lg-6"></div>

				<div class="col-lg-6">
					<div class="form-group row">
						<label for="exampleInputEmail1" class="col-sm-4">핸드폰번호</label> <input
							type="text" class="form-control col-sm-8" id="userPhone"
							name="userPhone" placeholder="핸드폰번호">
					</div>
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
		</div>
	</form>
</div>


<!-- 푸터 -->
<jsp:include page="../common/footer.jsp"></jsp:include>
<!-- 푸터 끝 -->
</body>
</html>

<script>

var validationId = false;

	function disableFunc(){
		$("#signUpBtn").attr("disabled",true);
	}
	
	function signUp() {
		
		if(validationCheck()==true){
			$("#signUpForm").attr("action","/user/signUpSubmit")
			$("#signUpForm").submit();
		}
		else{
			alert("모든 값을 입력하세요");
		}
	}
	
	function validationCheck(){
		
		var id = $("#userId").val();
		var pw = $("#userPw").val();
		var name = $("#userName").val();
		var phone = $("#userPhone").val();
		
		if(id=='' || pw=='' || name == '' || phone ==''){
			return false;
		}
		else{
			return true;
		}
	}

	function idCheck() {

		var userId = $("#userId").val();

		$.ajax({

			url : "/user/idCheck",
			dataType : "text",
			type : "POST",
			data : {
				"userId" : userId
			},
			success : function(duplicateCount) {
				
				alert(duplicateCount)

				if (duplicateCount == 0) {
					alert("가입 가능합니다");
					validationId = true;
					$("#signUpBtn").attr("disabled",false);
				} else {
					alert("중복된 ID입니다");
					validationId = false;
				}
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "error:" + error);
			}
		});

	}

	function back() {

	}
</script>