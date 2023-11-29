<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>支付</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="/css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="/css/style.css">
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/layer/layer.js"></script>
	<script type="text/javascript" src="/js/cart.js"></script>
</head>
<body>
	
	





	<!--header-->
	<jsp:include page="header.jsp"></jsp:include>
	<!--//header-->

	<div class="cart-items">
		<div class="container">
			<h2>确认要报名吗</h2>
			<form class="form-horizontal" action="/order_confirm" id="payform">
				<div class="row">
					<label class="control-label col-md-1">联系人</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="name" value="${user.name }" style="height:auto;padding:10px;" placeholder="输入联系人" required="required"><br>
					</div>
				</div>
				<div class="row">
					<label class="control-label col-md-1">联系电话</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="phone" value="${user.phone }" style="height:auto;padding:10px;" placeholder="输入联系电话" required="required"><br>
					</div>
				</div>
				<div class="row">
					<label class="control-label col-md-1">联系地址</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="address" value="${user.address }" style="height:auto;padding:10px;" placeholder="输入家庭地址" required="required"><br>
					</div>
				</div>

 
 

				<div class="col-sm-6 col-md-4 col-lg-3 " style="display:none">
					<label>
						<div class="thumbnail">
							<input type="radio" name="paytype" value="1" checked="checked" />
							<img src="/images/wechat.jpg" alt="微信支付">
						</div>
					</label>
				</div>
				 
				<div class="clearfix"> </div>
				<div class="register-but text-center">
					<input type="submit" value="确认报名">
					<div class="clearfix"> </div>
				</div>
			</form>
		</div>
	</div>





	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--//footer-->

	
	<script type="text/javascript">
		function dopay(paytype){
			$("#paytype").val(paytype);
			$("#payform").submit();
		}
	</script>

</body>
</html>