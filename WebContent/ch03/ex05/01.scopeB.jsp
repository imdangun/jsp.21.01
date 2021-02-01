<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<ul>
	<li><%= pageContext.getAttribute("one") %></li>
	<li><%= request.getAttribute("two") %></li>
	<li><%= session.getAttribute("three") %></li>
	<li><%= application.getAttribute("four") %></li>
</ul>