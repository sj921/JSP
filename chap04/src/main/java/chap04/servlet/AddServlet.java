package chap04.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//원래는 add와 invalidate servlet을 따로 만드는 것이 맞다. 예제라 같이 만든 것뿐이다.
@WebServlet(urlPatterns = {"/session/add", "/session/invalidate"})
public class AddServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("세션을 만료시켰습니다.");
		
		req.getSession().invalidate();
		
		resp.sendRedirect("/chap04/session/index.jsp");
	}
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		// 세션에 대한 설정
		// 활동을 안하면 세션이 만료되는 시간 설정 (30초 동안 아무 요청을 하지 않으면 세션이 사라짐)
		session.setMaxInactiveInterval(600); 
				
		String name = req.getParameter("name");
		String value  = req.getParameter("value");
		
		session.setAttribute(name, value);
		
		// 추가 다 했으면 Redirect
		resp.sendRedirect("/chap04/session/index.jsp");
		
		
		
		
		
	}
	
	
	
}
