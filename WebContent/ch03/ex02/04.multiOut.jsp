<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String gender = request.getParameter("gender");
	String[] letters = request.getParameterValues("letter");
	String[] jobs = request.getParameterValues("job");
%>
<%= gender %> <br>
<% 
	for(String letter: letters) {
%>
		<%= letter %> &nbsp;
<%
	}
%> <br>
<% 
	for(String job: jobs)
		out.print(job + "&nbsp;");
%>
