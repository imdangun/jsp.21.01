<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.html'>메인</a><hr>

<h3>장바구니</h3>
<%
	Object cartObj = session.getAttribute("cart");

	if(cartObj != null) {
		List<String> cart = (List<String>)cartObj;
		if(cart.size() > 0) {
%>
			<form action='cartDelProc.jsp' method='post'>
				<ul>
<%
					for(String product: cart) {
%>				
						<li><%= product %><input type='checkbox' name='product' value='<%= product %>'/></li>
<%
					}
%>
				</ul>
				<button type='submit'>빼기</button>				
			</form>
<%
		} else out.println("물건이 없습니다.");
	} else out.println("장바구니가 없습니다.");
%>