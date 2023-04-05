package board.service;

import javax.servlet.http.HttpServletRequest;

public class WriteFormService implements Service {

	@Override
	public String service(HttpServletRequest req) {
		// 이전에 쓰던 글이 있으면 (임시 저장 글) 불러오기
		
		
		// 사용자가 로그인된 상태라면 글쓴이 부분을 미리 채워 놓기
				
		
		
		return "board/write_form";
	}
	
	
	
}
