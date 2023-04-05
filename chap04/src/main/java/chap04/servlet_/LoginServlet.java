package chap04.servlet_;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chap04.model_.Member;

@WebServlet("/memo/login_")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

		ServletContext application = getServletContext();
		HttpSession session = req.getSession();
		
		// 아이디와 비밀번호 전달받을 예정
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		Map<String, Member> map =
				application.getAttribute("members") == null ?
						null : (Map)application.getAttribute("members");
		
		boolean login = false;
		
		if (map.containsKey(id)) {
			Member mem = map.get(id);
			login = mem.login(id, pwd);
			session.setAttribute("login", login);
			if (login) {
				session.setAttribute("currMem", mem);
			}
		}
		
		resp.sendRedirect("/chap04/quiz/index.jsp");
		
	}
	
}
