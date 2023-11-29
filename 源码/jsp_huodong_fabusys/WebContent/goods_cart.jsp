<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title>报名列表</title>
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
	<jsp:include page="header.jsp">
		<jsp:param name="flag" value="7"></jsp:param>
	</jsp:include>
	<!--//header-->

	
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
		
		
		
			<h2>我的报名列表</h2>


			<c:forEach items="${order.itemMap }" var="item">
				<div class="cart-header col-md-6">
					<div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							<a href="/goods_detail?id=${item.key}">
								<img src="/${item.value.goods.cover}" class="img-responsive">
							</a>
						</div>
						<div class="cart-item-info">
							<h3><a href="/goods_detail?id=${item.key}">${item.value.goods.name}</a></h3>
							<h3><span>等待提交</span></h3>
  							<a class="btn btn-danger" href="javascript:deletes(${item.key});">删除</a>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</c:forEach>
			
			<div class="cart-header col-md-12">
				<hr>
				<h3> </h3>
				<a class="btn btn-success btn-lg" style="margin-left:74%" href="/order_submit">提交报名</a>
			</div>
			
			
			
		</div>
	</div>
	<!--//cart-items-->	
	
	




	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--//footer-->


</body>
</html>