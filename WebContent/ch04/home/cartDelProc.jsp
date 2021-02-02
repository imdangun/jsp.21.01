<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	request.setCharacterEncoding("utf-8");
	String[] products = request.getParameterValues("product");
	
	if(products != null && products.length > 0) {
		String cart = "";
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie: cookies)
			if(cookie.getName().equals("cart"))
				cart = cookie.getValue();
		
		for(String product: products) 
			cart = cart.replaceFirst(product + "/", "");
		
		Cookie cookie = new Cookie("cart", cart);
		response.addCookie(cookie);		
%>
		<c:redirect url='cartOut.jsp'/>
<%
	} else {
%>
		<c:redirect url='cartOut.jsp'>
			<c:param name='msg' value='삭제할 물건을 고르세요.'/>
		</c:redirect>
<%
	}
%>