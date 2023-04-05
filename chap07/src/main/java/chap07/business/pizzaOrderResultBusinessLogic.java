package chap07.business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class pizzaOrderResultBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request) {
		// request에 방금 추가한 주문의 ID가 뭔지 함께 왔으면 좋겠다..
		String customerName = request.getParameter("name");
		
		System.out.println("건네받은 name: " + customerName);
		
		request.setAttribute("customerName", customerName);
		
		// 원래대로라면 건네받은 ID를 통해 어떤 주문이었는지 select 가능
		// SELECT * FROM pizza_order WHERE name=customerName
		
		try (
			Connection conn = 
				DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");				
			PreparedStatement pstmt =
				conn.prepareStatement("SELECT * FROM pizza_order WHERE name=?");				
		){
			pstmt.setString(1, customerName);
			
			
			// ResultSet도 발생하는 예외가 바깥의 try-catch와 같기 때문에
			// catch를 추가할 필요가 없다 (개별적인 예외처리를 하고 싶은 경우 사용해도 됨)
			try (ResultSet rs = pstmt.executeQuery()) {
				List<String> pastOrders = new ArrayList<>(); 
				
				while (rs.next()) {
					// DB (DAO)
					pastOrders.add(
						String.format(
							"<tr><td>%s</td><td>%s</td><td>%s</td></tr>",
							rs.getString("topping"),
							rs.getString("crust"),
							rs.getString("pizza_size")
						));
				}	
				// Service(Business Logic)
				request.setAttribute("pastOrders", pastOrders);
			} 
										
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return "/pizza/orderResult";
	}
	
	
	
	
}
