package chap05.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EncodingServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
	
		/*
			GET방식 파라미터는 URL뒤에 데이터가 추가되어 도착한다.
			URL의 해석은 WAS(Apache-Tomcat)가 담당하기 때문에
			해당 값을 올바른 인코딩 타입으로 해석하기 위해서는 서버의 설정을 변경해야 한다.
			(포트번호 수정한 곳(server.xml)에 URIEncoding="EUC-KR"을 추가)	
		*/
				
		// samkim이랑 smoothie값 받아서 출력해보기
		String samkim = req.getParameter("samkim");
		String smoothie  = req.getParameter("smoothie");
		
		System.out.println(samkim);
		System.out.println(smoothie);
		
		req.getRequestDispatcher("/encodingResult.jsp")
			.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		/*
	 		POST방식 파라미터 값은 request 객체 내부에 실려서 도착하므로
	 		request 객체의 인코딩 타입을 설정해주어야 한다.	 		
		*/	
		req.setCharacterEncoding("EUC-KR");		
		
		String samkim = req.getParameter("samkim");
		String smoothie  = req.getParameter("smoothie");
		
		System.out.println(samkim);
		System.out.println(smoothie);
		
		// JSP의 맨 위에 있는 설정과 같은 역할을 하는 것
		resp.setCharacterEncoding("EUC-KR"); // pageEncoding 
		resp.setContentType("EUC-KR"); // contentType
		
		PrintWriter out = resp.getWriter();
		
		out.append("<html><head></head><body>");
		
		out.append("삼각김밥: " + samkim + "<br>");
		out.append("스무디: " + smoothie);
		
		out.append("</body></html>");
		
	}
	
	
	
}
