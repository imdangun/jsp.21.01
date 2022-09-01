package ch01;

import java.io.IOException;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/lifeCycle")
public class C4_LifeCycle extends HttpServlet {
	private int initCnt = 0;
	private int doGetCnt = 0;
	private int destroyCnt = 0;
	
	@Override
	public void init(ServletConfig conf) throws ServletException {
		System.out.printf("initCnt: %d\n", ++initCnt);
	}
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
		System.out.printf("doGetCnt: %d\n", ++doGetCnt);
	}
	
	@Override
	public void destroy() {
		System.out.printf("destroyCnt: %d\n", ++destroyCnt);
	}	
	
}
