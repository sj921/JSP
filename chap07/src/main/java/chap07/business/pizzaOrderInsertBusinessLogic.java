package chap07.business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.PizzaOrderDAO;
import chap07.dto.PizzaOrder;

public class pizzaOrderInsertBusinessLogic implements BusinessLogic {

	// 자식이므로 업캐스팅 가능 PizzaOrderDAO orderDao = new PizzaOrderDAOImpl();
	PizzaOrderDAO orderDao;
		
	@Override
	public String process(HttpServletRequest request) {
		
		// insert에 넘어오는 값은 orderForm의 이름이 넘어오는 것! (DB와 혼동하지 말 것!!)
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String crust = request.getParameter("crust");
		String size = request.getParameter("size");
		String[] toppings = request.getParameterValues("topping");	
		String topping = String.join("/", toppings);
		String instruction = request.getParameter("instruction");
		
		// 인터페이스를 통해 나중에 만들겠다고 약속만 해놓은 상태
		int row = orderDao.insert(new PizzaOrder(
				name, address, crust, size, topping, instruction));
		
		// row값에 따라 redirect를 어디로 할지 결정		
		if (row == 1) {
			// 리다이렉트 경로에 ?를 추가해 원하는 정보를 보낼 수도 있다
			return "redirect::/chap07/pizza/order/result?name=" + name;
		} else {
			return "redirect::/chap07/pizza/order/failed";
		}
		
		
		
//		try (
//			Connection conn = 
//				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");
//			PreparedStatement pstmt = 
//				conn.prepareStatement("INSERT INTO pizza_order VALUES (?,?,?,?,?,?)");				
//		){
//			pstmt.setString(1, name);
//			pstmt.setString(2, address);
//			pstmt.setString(3, crust);
//			pstmt.setString(4, size);
//			pstmt.setString(5, topping);
//			pstmt.setString(6, instruction);
//			
//			int row = pstmt.executeUpdate();
//			
//			if (row > 0) {
//				System.out.println("주문 성공함");
//			} else {
//				System.out.println("주문 실패");
//			}
//						
//			// request.setAttribute("success", row);
//			// request.setAttribute("info", new PizzaOrder(name, address, crust, size, topping, instruction));
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
		// 리다이렉트 경로에 ?를 추가해 원하는 정보를 보낼 수도 있다

		
	}
		
}