package chap07.business;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.PizzaOrderDAO;
import chap07.dao.PizzaOrderDAO_Impl;
import chap07.dto.PizzaOrder;

public class pizzaOrderListBusinessLogic implements BusinessLogic{

   PizzaOrderDAO orderDao = new PizzaOrderDAO_Impl();  
   // PizzaOrderDAO_Impl orderDao = new PizzaOrderDAO_Impl();  
   // -> 클래스로 하면 수정불가 (전체를 다 수정해야 함)
   // PizzaOrderDAO orderDao = new PizzaOrderDAO_Impl();  
   // -> PizzaOrderDAO_Impl()만 수정하면 됨(세부사항 수정 시 인터페이스가 더 유용하다)
   // 최대한 다른 코드에 영향이 가지 않게 할 것!
	
   @Override
   public String process(HttpServletRequest request) {
	   // DAO (Data Access Object)
	   
	   // 수많은 비즈니스 로직들은 DB에 똑같은 작업들을 많이 진행하게 된다.
	   // 그렇기 때문에 비즈니스 로직 내부에서도 DB관련 작업들을 따로 묶어 정리해두면
	   // 작업량을 많이 줄일 수 있다.
	   List<PizzaOrder> pastOrders = 
			   orderDao.selectAll("SELECT * FROM pizza_order");
	   
	   request.setAttribute("pastOrders", pastOrders);
	   
	   return "pizza/orderList";
	   
//      try (
//            Connection conn = 
//            DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");
//            PreparedStatement pstmt = 
//                  conn.prepareStatement("SELECT * FROM pizza_order");
//            ResultSet rs =
//                  pstmt.executeQuery();
//            ){
//         List<String> pastOrders = new ArrayList<>();
//         while (rs.next()) {
//            pastOrders.add(
//                  String.format(
//                        "<tr><td>%s</td><td>%s</td><td>%s</td></tr>",
//                        rs.getString("topping"),
//                        rs.getString("crust"),
//                        rs.getString("pizza_size")
//                        ));
//         }
//         
//         request.setAttribute("pastOrders", pastOrders);
//      } catch (SQLException e) {
//         e.printStackTrace();
//      }
	   
    
   }
}