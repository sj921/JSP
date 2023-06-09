package board.dto;

public class Pagination {

	private int page;                                
	private int size;	
	private int board_size;
	
	public Pagination (int page, int size) {
		this.page = page;
		this.size = size;
	}
	
	public int getStartIndex() {
		return (page - 1) * size;
	}
	
	public int getEndIndex() {
//		int end_index = page * size;
//		return end_index > board_size ? board_size : end_index;
		return page * size;		
	}
	
	public int getPaginationStart() {
		return (page / size) * size + 1;
	}
	
	public int getPaginationEnd() {
		return (page / size + 1) * size;
	}
	
	
	
	
}
