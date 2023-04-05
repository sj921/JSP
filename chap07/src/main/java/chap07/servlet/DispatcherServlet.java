package chap07.servlet;

import java.io.IOException;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.business.BusinessLogic;
import chap07.business.HelloBusinessLogic;
import chap07.business.PizzaIndexBusinessLogic;
import chap07.business.pizzaOrderFormBusinessLogic;
import chap07.business.pizzaOrderInsertBusinessLogic;
import chap07.business.pizzaOrderListBusinessLogic;
import chap07.business.pizzaOrderResultBusinessLogic;

// hello로 접속하는 사용자에게 hello.jsp 페이지를 보여주도록 만들어보세요
public class DispatcherServlet extends HttpServlet {

	Map<String, BusinessLogic> businessMapping = new HashMap<>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("OracleDriver loaded...");
		} catch (ClassNotFoundException e) {
			System.out.println("Fail to load OracleDriver loaded...");
		}
		businessMapping.put("/hello", new HelloBusinessLogic());
		businessMapping.put("/pizza", new PizzaIndexBusinessLogic());
		businessMapping.put("/pizza/order/list", new pizzaOrderListBusinessLogic());
		businessMapping.put("/pizza/order/result", new pizzaOrderResultBusinessLogic());
		businessMapping.put("/pizza/order/form", new pizzaOrderFormBusinessLogic());
		businessMapping.put("/pizza/order/insert", new pizzaOrderInsertBusinessLogic());
	}
		
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String contextPath = req.getContextPath();
		String uri = req.getRequestURI().substring(contextPath.length());
		
		System.out.println(uri);
		
//		System.out.println("contextPath: " + contextPath);
//		System.out.println("uri: " + uri);
//		System.out.println("uri - contextPath: " 
//				+ (uri = uri.substring(contextPath.length())));
//		-> String uri = req.getRequestURI().substring(contextPath.length()); 한 문장으로 줄일 수 있다
		
		String nextView = businessMapping.get(uri).process(req);
		
		if (nextView.startsWith("redirect::")) {
			resp.sendRedirect(nextView.substring("redirect::".length()));
		} else {
			req.getRequestDispatcher("/WEB-INF/views/" + nextView + ".jsp")
			.forward(req, resp);					
		}
		
	}
	
}
