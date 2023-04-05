package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {

	// JSP의 <%! %> 부분
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// HttpServletRequest : 사용자의 요청 정보가 담겨있는 객체
		// HttpServletResponse : 모든 처리가 끝난 후 응답해야하는 객체
		
		// JSP의 <% %> 부분
		PrintWriter out = resp.getWriter();
		
		// JSP는 1차로 서블릿 형태로 변환된다
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1 style=\"color: red;\">Hello</h1>");
		out.print("<p>Hello, Servlet!</p>");		
		out.print("</body>");
		out.print("</html>");
		
	}
	
	
	
}
