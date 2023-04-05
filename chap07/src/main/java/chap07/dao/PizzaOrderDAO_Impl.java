package chap07.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import chap07.dto.PizzaOrder;

public class PizzaOrderDAO_Impl implements PizzaOrderDAO{

	@Override
	public List<PizzaOrder> selectAll(String query) {
		List<PizzaOrder> list = new ArrayList<>();
				
		try (
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query);		
			ResultSet rs = pstmt.executeQuery();
		) {
			while (rs.next()) {
				// name, address, crust, size, topping, instruction
				list.add(new PizzaOrder(
							rs.getString("name"),
							rs.getString("address"),
							rs.getString("crust"),
							rs.getString("pizza_size"),
							rs.getString("topping"),
							rs.getString("instruction")
						));
			}
			
			
		} catch (Exception e) {
			
		}
		
		return list;
	}
	
	@Override
	public PizzaOrder select(String query) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Integer insert(PizzaOrder order) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
}
