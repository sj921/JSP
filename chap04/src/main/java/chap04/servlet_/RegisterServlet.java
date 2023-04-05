package chap04.servlet_;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.model_.Member;

@WebServlet("/memo/register_")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// 회원가입 버튼을 누르면 -> 회원가입 폼 뜨도록 (regForm)
		req.getRequestDispatcher("/quiz_/view/regForm.jsp")
			.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

		ServletContext application = getServletContext();
		
		// 서버에서 가져오는 값
		if (application.getAttribute("members") == null) {
			application.setAttribute("members", new HashMap<>());
		}
		
		// 회원정보가 도착하면 등록하는 곳 (사용자가 입력하는 값)
		String name = req.getParameter("name");
		String id = req.getParameter("id");
		String password = req.getParameter("pwd");
		String birthday = req.getParameter("birthday");
		
		Map<String, Member> map = (Map)(application.getAttribute("members"));
		
		if (map.containsKey(id)) {
			resp.getWriter()
				.append("<html><script>")
				.append("alert('중복된 아이디입니다!');")
				.append("location.href='/chap04/quiz/index.jsp'</script></html>");
		} else {
			map.put(id, new Member(name, id, password, birthday));
			resp.sendRedirect("/chap04/quiz/index.jsp");
		}
		
	}
	
	
	
	
	
}
