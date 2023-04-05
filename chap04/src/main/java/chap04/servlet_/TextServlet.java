package chap04.servlet_;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.model_.Member;

@WebServlet("/memo/text_")
public class TextServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		Member mem = (Member)req.getSession().getAttribute("currMem");		
		
		mem.putMemo(req.getParameter("memo-value"));
		
		resp.sendRedirect("/chap04/quiz/index.jsp");
		
	}
		
}
