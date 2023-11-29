<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<title>报名列表</title>
<link rel="stylesheet" href="/css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	




	<jsp:include page="header.jsp"></jsp:include>

	<br>

	<ul role="tablist" class="nav nav-tabs">
		<li <c:if test="${status==0 }">class="active"</c:if> role="presentation"><a href="/admin/order_list">全部报名</a></li>
 	</ul>

	<br>
	
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
 		<th width="15%">活动详情</th>
		<th width="20%">报名信息</th>
		<th width="10%">报名状态</th>
		<th width="10%">报名用户</th>
		<th width="10%">报名时间</th>
		<th width="10%">操作</th>
	</tr>

		<c:forEach items="${p.list }" var="order">
			<tr>
				<td><p>${order.id }</p></td>
 				<td>
					<c:forEach items="${order.itemList }" var="item">
						<p>${item.goodsName }(${item.price }) x ${item.amount}</p>
					</c:forEach>
				</td>
				<td>
					<p>${order.name }</p>
					<p>${order.phone }</p>
					<p>${order.address }</p>
				</td>
				<td>
					<p>
						<c:if test="${order.status==2 }"><span style="color:red;">已提交</span></c:if>
						<c:if test="${order.status==3 }"><span style="color:green;">已出游</span></c:if>
						<c:if test="${order.status==4 }"><span style="color:black;">已参与</span></c:if>

					</p>
				</td>
				
				<td><p>${order.user.username }</p></td>
				<td><p>${order.datetime }</p></td>
				<td>
					<c:if test="${order.status==2 }">
						<a class="btn btn-success" href="/admin/order_status?id=${order.id }&status=3">出游</a>
					</c:if>
					<c:if test="${order.status==3 }">
						<a class="btn btn-warning" href="/admin/order_status?id=${order.id }&status=4">完成</a>
					</c:if>
					<a class="btn btn-danger" href="/admin/order_delete?id=${order.id }&pageNumber=${p.pageNumber}&status=${status}">删除</a>
				</td>
			</tr>
		</c:forEach>
	
     
</table>

<br>
	<jsp:include page="/page.jsp">
		<jsp:param value="/admin/order_list" name="url"/>
		<jsp:param value="&status=${status}" name="param"/>
	</jsp:include>
<br>
</div>
</body>
</html>