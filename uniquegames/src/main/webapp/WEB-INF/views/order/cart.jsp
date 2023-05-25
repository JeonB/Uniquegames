<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Unique Games</title>
	<link rel="stylesheet" href="css/order_style.css">
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script> <!-- 마이크로소프트 jQuery-->
	<script src="js/order_script.js"></script>
</head>
<body>
<!-- header -->
<jsp:include page="../main/header.jsp"></jsp:include>

<!-- content -->
<section id="top-bg">
	<div id="base-layer">
		<div id="top-bg-textarea">
			<p id="top-title">Cart</p>
			<p id="top-subtitle">#장바구니</p>
		</div>
	</div>
</section>

<form name="cartForm" action="cart_proc.do" method="post">
	<h1>Cart</h1>
	<section id="cart">
		<div id="div-gameList">
			<div id = div-delete>
				<button type="button" id="btn-deleteAll">전체삭제</button>
				<button type="button" id="btn-deleteSelected">선택삭제</button>
			</div>
			<div id="div-table">
				<input type="hidden" id="m_id" value="${ m_id }">
				<table id="table-gameList">
					<tr>
						<th><input type="checkbox" id="checkAll" name="checkAll" checked="checked">선택</th>
						<th></th>
						<th>상품명</th>
						<th>가격</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="cart" items="${cartList}">
					<tr>
						<td id="${ cart.amount }">
							<input type="checkbox" id="checkOne" name="checkOne" checked="checked" value="${ cart.id }">
						</td>
						<td><a><img src="${ cart.game_img }"></a></td>
						<td>
							<p><a>${ cart.gametitle }</a></p>
						</td>
						<td>
							<fmt:formatNumber type="currency" value="${ cart.amount }"/>
						</td>
						<td>
							<button type="button" id="btn-deleteOne" value="${ cart.id }">삭제</button>
						</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div id="div-price">
			<table id="cart-price">
				<tr>
					<th>개수</th>
					<th>총 금액</th>
					
				</tr>
				<tr>
					<td id="count">총 ${ count }개</td>
					<td id="totalAmount">${ totalAmount }</td>
				</tr>
			</table>
		</div>
		<div id="div-button">
			<button id="btn-cart">주문하기</button>
		</div>
	</section>
</form>

<!-- footer -->
<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>