package board.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import board.dto.Board;

public class BoardDao_Impl implements BoardDao {

	@Override
	public List<Board> selectAllBoards() {		
		List<Board> boards = new ArrayList<>();
		String sql = "SELECT * FROM board ORDER BY board_id DESC";
		
		try (
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();						
		){
			while (rs.next()) {
				boards.add(new Board(rs));
			}				
		} catch (SQLException e) {			
			e.printStackTrace();
		}			
		return boards;
	}		

	
	@Override
	public Board selectBoardById(int board_id) {
		String sql = "SELECT * FROM board WHERE board_id=?";
		
		try (
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);				
		){			
			pstmt.setInt(1, board_id);			
			try (
				ResultSet rs = pstmt.executeQuery();
			){
				rs.next();
				return new Board(rs);
			}			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	@Override
	public void increaseView(int board_id) {
		String sql = "UPDATE board SET write_view=write_view+1 WHERE board_id=?";
		
		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);				
				){			
			pstmt.setInt(1, board_id);	
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
	}
	
	@Override
	public boolean write(Board board) {
		String sql = "INSERT INTO board VALUES "
				+ "(board_id_seq.nextval,?,?,?,?,sysdate,0,0,0)";
		
		try (
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			pstmt.setString(1, board.getWrite_id());
			pstmt.setString(2, board.getWrite_pw());
			pstmt.setString(3, board.getWrite_title());
			pstmt.setString(4, board.getWrite_content());
			
			return pstmt.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		

	}
	
}
