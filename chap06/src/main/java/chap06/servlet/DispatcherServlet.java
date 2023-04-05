package chap06.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap06.process.*;

public class DispatcherServlet extends HttpServlet{

	private Map<String, WebProcess> processMapping = new HashMap<>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		String contextPath = config.getServletContext().getContextPath();
				
		processMapping.put(contextPath + "/hello", new HelloWebProcess());	
		processMapping.put(contextPath + "/gugudan", new GugudanWebProcess());		
	}
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// 1. 사용자가 요청을 한다
		System.out.println("요청 URI : " + req.getRequestURI());
		System.out.println("요청 방식 : " + req.getMethod());
		
		// 2. 해당 URI와 Method에 알맞은 처리를 진행한다
		try {
			String nextPage = processMapping.get(req.getRequestURI())
					.process(req, resp);		
			
		// 3. 처리 후 알맞은 view 페이지를 응답한다
			
			// WEB-INF의 내부에는 클라이언트가 직접 접근하는 것은 금지되어 있지만
			// 개발자에 의한 포워드는 허용되어 있다
			req.getRequestDispatcher("/WEB-INF/views/" + nextPage + ".jsp").forward(req, resp);
		} catch (NullPointerException e) {
			// 해당 URI로 꺼낼 수 있는 process가 없는 경우에 대한 처리
			resp.sendRedirect(req.getContextPath() + "/hello");

		}
		
	}
	
}
