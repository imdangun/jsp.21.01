<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String text = request.getParameter("text");
	String number = request.getParameter("number");
	String date = request.getParameter("date");
	String checkbox = request.getParameter("checkbox");
	String radio = request.getParameter("radio");
	
	System.out.printf("|%s|, |%s|, |%s|, |%s|, |%s|\n", 
			text, number, date, checkbox, radio);
%>
<%--
||, ||, ||, |null|, |null|
--%>