<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" href="../images/favicon.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/account.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
	integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<title>BITBOX</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js"
	type="text/javascript"></script>

<style type="text/css">
.center {
	margin: auto;
	width: 60%;
	border: 3px solid #00ff00;
	padding: 10px;
}

body {
	margin: 0px 350px;
}
</style>

</head>
<body>
<jsp:include page="../main/header.jsp"></jsp:include>

	<section class="account">
		<form action="<%=request.getContextPath()%>/member" method="post">
			<input type="hidden" name="param" value="loginAf">

			<div class="content">
				<div class="row_group">
					<h3 class="join_title">
						<label for="id">아이디</label>
					</h3>
					<span class="ps_box int_id"> <input type="text" id="id"
						name="id" class="int" title="ID" maxlength="20" required>
					</span>
				</div>

				<div class="join_row">
					<h3 class="join_title">
						<label for="pswd1">비밀번호</label>
					</h3>
					<span class="ps_box int_pass" id="pswd1Img"> <input
						type="password" id="pwd" name="pwd" class="int" title="비밀번호 입력"
						aria-describedby="pswd1Msg" maxlength="20"> <span
						class="lbl"> <span id="pswd1Span" class="step_txt" required></span>
					</span>
					</span>
				</div>
				<button type="submit" class="btn btn_type btn-danger btn_primary">로그인하기</button>
			</div>
		</form>
		
		<div class="btn_area">
				<button style="float: left;" type="button" class="btn btn_type btn-danger btn_primary"
					onclick="location.href='./findid.jsp'">ID 찾기</button>
				<button type="button" class="btn btn_type btn-danger btn_primary"
					onclick="location.href='./findpw.jsp'">PW 찾기</button>
		</div>
	</section>

	<script type="text/javascript">
		let user_id = $.cookie("user_id");
		if (user_id != null) {
			$("#id").val(user_id);
			$("#chk_save_id").prop("checked", true);
		}

		$("#chk_save_id").click(function() {

			if ($("#chk_save_id").is(":checked")) {

				if ($("#id").val().trim() == "") {
					alert("id를 입력해 주십시오");
					$("#chk_save_id").prop("checked", false);
				} else {
					// cookie를 저장	
					$.cookie("user_id", $("#id").val().trim(), {
						expires : 7,
						path : './'
					});
				}

			} else {
				$.removeCookie("user_id", {
					path : './'
				});
			}
		});
	</script>
	
<jsp:include page="../main/footer.jsp"></jsp:include>
  
</div>
</body>
</html>




