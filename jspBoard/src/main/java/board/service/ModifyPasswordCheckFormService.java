package board.service;

import javax.servlet.http.HttpServletRequest;

public class ModifyPasswordCheckFormService implements Service {
	
	@Override
	public String service(HttpServletRequest req) {
		req.setAttribute("type", "modify");
		
		return "board/password";
	}
	
}
