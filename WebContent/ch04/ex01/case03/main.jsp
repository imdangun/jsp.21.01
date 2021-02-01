<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	Object user = session.getAttribute("userId");
	
	if(user == null) {
		String userId = "";
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie cookie: cookies)
				if(cookie.getName().equals("userId"))
					userId = cookie.getValue();
		}	
%>
		<form action='loginProc.jsp' method='post'>
			ID: <input type='text' name='userId' value='<%= userId %>'/>
			PW: <input type='password' name='userPw'/>
			<input type='checkbox' name='isStoreId'> ID 저장
		</form>
