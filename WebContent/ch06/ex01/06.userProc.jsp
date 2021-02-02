<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch06.ex01.User' %>
<%@ page import='java.time.LocalDate' %>
<%
	pageContext.setAttribute("user", new User(1, "최한석", LocalDate.of(2025, 5, 5)));
	request.setAttribute("user", new User(2, "한아름", LocalDate.of(2026, 6, 15)));
	session.setAttribute("user", new User(3, "양승일", LocalDate.of(2027, 7, 25)));
	application.setAttribute("user", new User(4, "김필진", LocalDate.of(2028, 8, 13)));
%>
<jsp:forward page='06.userOut.jsp'/>