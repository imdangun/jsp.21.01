<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	request.setCharacterEncoding("utf-8");
	String[] products = request.getParameterValues("product");
	Object cartObj = session.getAttribute("cart");
	
	if(cartObj != null && products != null) {
		List<String> cart = (List<String>)cartObj;
		for(String product: products)
			cart.remove(product);
	}
%>
<c:redirect url='cartOut.jsp'/>