<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	for(int i = 0; i < 10; i++) {
%>
		<%= i %>
<%
	}
%>
<%-- out 객체를 사용하지 않는다. 로 refactoring 한다. --%>