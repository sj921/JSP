package board.servlet;

import java.io.IOException;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dto.Request;
import board.service.*;

public class DispatcherServlet extends HttpServlet {

	// 키값을 두개 받아오기!!
	Map<Request, Service> uriMapping = new HashMap<>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Oracle Driver loaded...");
		} catch (ClassNotFoundException e) {
			System.out.println("Oracle Driver not found Exception...");
		}
				
//		uriMapping.put(new Request("/", "GET"), new MainService());
		uriMapping.put(new Request("/main", "GET"), new MainService());
		uriMapping.put(new Request("/list", "GET"), new ListService());
		uriMapping.put(new Request("/contents", "GET"), new ReadService());
		uriMapping.put(new Request("/write", "GET"), new WriteFormService());
		uriMapping.put(new Request("/write", "POST"), new WriteService());
		uriMapping.put(new Request("/modify", "GET"), new ModifyPasswordCheckFormService());
		uriMapping.put(new Request("/modify", "POST"), new ModifyPasswordCheckService());
		uriMapping.put(new Request("/delete", "GET"), new DeletePasswordCheckFormService());
	}

		
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.setCharacterEncoding("EUC-KR");
		
		String contextPath = req.getContextPath();
		
		String uri = req.getRequestURI().substring(contextPath.length());
		String method = req.getMethod();
				
		System.out.println("### Request Info ###");
		System.out.println("Uri: " + uri);
		System.out.println("Method: " + method);
		
		String view = uriMapping.get(new Request(uri, method)).service(req);
		
		if (view.startsWith("redirect::")) {
			resp.sendRedirect(view.substring("redirect::".length()));
		} else {
			req.getRequestDispatcher("/WEB-INF/views/" + view + ".jsp")
				.forward(req, resp);			
		}
		
		
		
				
	}
		
}
