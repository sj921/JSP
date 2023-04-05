package board.dao;

import java.util.List;

import board.dto.Board;

public interface BoardDao {
	
	List<Board> selectAllBoards();

	Board selectBoardById(int board_id);
	
	void increaseView (int board_id);
	
	boolean write(Board board);
	
}
